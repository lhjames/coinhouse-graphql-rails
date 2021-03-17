module Types
  class QueryType < BaseObject
    field :all_workshops, [WorkshopType], null: false
    field :all_meetings, [MeetingType], null: false
    # Your client should always be able to expect to work with a list
    field :search_workshops, [WorkshopType], null: false do
      argument :location, String, required: false
    end 

    def all_workshops
      Workshop.all
    end

    def all_meetings
      Meeting.all
    end

    def search_workshops(**args)
      byebug
      Workshop.all
    end
    #Take that, figure out the query, how to make sure it works, WRITE TESTS, make the test pass (use byebug)
  end
end