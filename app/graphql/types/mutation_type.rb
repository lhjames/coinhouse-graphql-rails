module Types
  class MutationType < BaseObject
    field :create_workshop, mutation: Mutations::CreateWorkshop
  end
end
