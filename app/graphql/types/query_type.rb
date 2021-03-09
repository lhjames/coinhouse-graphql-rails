module Types
  class QueryType < BaseObject
    field :all_workshops, [WorkshopType], null: false
    field :all_meetings, [MeetingType], null: false

    def all_workshops
      Workshop.all
    end

    def all_meetings
      Meeting.all
    end
  end
end