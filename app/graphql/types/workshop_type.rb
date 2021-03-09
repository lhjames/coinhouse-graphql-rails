module Types
  class WorkshopType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :location, String, null: false
    field :description, String, null: false
    field :attendants, Integer, null: false
    field :duration, Integer, null: false
    field :date, String, null: false

    field :created_by, UserType, null: true
  end
end
