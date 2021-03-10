require 'test_helper'

class Mutations::CreateWorkshopTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateWorkshop.new(object: nil, field: nil, context: { current_user: user }).resolve(args)
  end

  test 'create a new workshop' do
    user = User.create!(
      name: "Lulu",
      email: "lulu@gmail.com",
      password: "1234"
      )
      
    workshop = perform(
      name: 'Cool workshop',
      location: 'Somewhere over the rainbow',
      description: 'Something cool',
      attendants: 3,
      duration: 1,
      date: "09/01/2021 19:00 %m/%d/%Y %H:%M",
      user: user
    )

    assert workshop.persisted?
    assert_equal workshop.name, 'Cool workshop'
    assert_equal workshop.location, 'Somewhere over the rainbow'
    assert_equal workshop.description, 'Something cool'
    assert_equal workshop.attendants, 3
    assert_equal workshop.duration, 1
    assert_equal workshop.date, '09/01/2021 19:00 %m/%d/%Y %H:%M'

    assert_equal workshop.user, user
  end

  test 'graph execution error' do
    assert perform.is_a? GraphQL::ExecutionError
  end
end