module Types
  class WorkshopType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :location, String, null: false
    field :description, String, null: false
    field :attendants, Integer, null: false
    field :duration, Float, null: true
    field :date, Types::DateTimeType, null: true
  end
end
