module Types
  class MeetingType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :location, String, null: false
    field :description, String, null: false
    field :attendants, Integer, null: false
    field :duration, Integer, null: false
    field :date, Types::DateTimeType, null: false
  end
end
