module Types
  class MutationType < BaseObject
    field :create_workshop, mutation: Mutations::CreateWorkshop
    
    field :create_meeting, mutation: Mutations::CreateMeeting
  end
end
