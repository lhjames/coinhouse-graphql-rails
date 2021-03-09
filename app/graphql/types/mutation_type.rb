module Types
  class MutationType < BaseObject
    field :create_workshop, mutation: Mutations::CreateWorkshop
    
    field :create_meeting, mutation: Mutations::CreateMeeting

    field :create_user, mutation: Mutations::CreateUser
  end
end
