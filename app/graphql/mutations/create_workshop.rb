module Mutations
  class CreateWorkshop < BaseMutation
    argument :name, String, required: true
    argument :location, String, required: true
    argument :description, String, required: true
    argument :attendants, Integer, required: true
    argument :duration, Integer, required: true
    argument :date, String, required: true

    type Types::WorkshopType

    def resolve(name: nil, location: nil, description: nil, attendants: nil, duration: nil, date: nil)
      Workshop.create!(
        name: name,
        location: location,
        description: description,
        attendants: attendants,
        duration: duration,
        date: date
      )
    end
  end
end