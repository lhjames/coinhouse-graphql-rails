module Types
  class QueryType < BaseObject
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_workshops, [WorkshopType], null: false
    field :all_meetings, [MeetingType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_workshops
      Workshop.all
    end

    def all_meetings
      Meeting.all
    end
  end
end