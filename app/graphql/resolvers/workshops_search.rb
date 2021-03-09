require 'search_object'
require 'search_object/plugin/graphql'

class Resolvers::WorkshopsSearch
  include SearchObject.module(:graphql)

  scope { Workshop.all }

  type types[Types::WorkshopType]

  class WorkshopFilter < ::Types::BaseInputObject
    argument :OR, [self], required: false
    argument :description_contains, String, required: false
    argument :url_contains, String, required: false
  end

  option :filter, type: WorkshopFilter, with: :apply_filter

  def apply_filter(scope, value)
    branches = normalize_filters(value).reduce { |a, b| a.or(b) }
    scope.merge branches
  end

  def normalize_filters(value, branches = [])
    scope = Workshop.all
    scope = scope.where('description LIKE ?', "%#{value[:name_contains]}%") if value[:name_contains]
    scope = scope.where('description LIKE ?', "%#{value[:description_contains]}%") if value[:description_contains]


    branches << scope

    value[:OR].reduce(branches) { |s, v| normalize_filters(v, s) } if value[:OR].present?

    branches
  end
end