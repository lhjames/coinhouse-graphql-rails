require 'test_helper'

class Mutations::CreateMeetingTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateMeeting.new(object: nil, field: nil, context: { current_user: user }).resolve(args)
  end

  test 'create a new meeting' do
    user = User.create!(
      name: "Lulu",
      email: "lulu@gmail.com",
      password: "1234"
      )

    meeting = perform(
      name: 'Cool meeting',
      location: 'Somewhere in the deep dark abyss',
      description: 'Something cool',
      attendants: 3,
      duration: 1,
      date: "09/01/2021 19:00 %m/%d/%Y %H:%M",
      user: user,
    )

    assert meeting.persisted?
    assert_equal meeting.name, 'Cool meeting'
    assert_equal meeting.location, 'Somewhere in the deep dark abyss'
    assert_equal meeting.description, 'Something cool'
    assert_equal meeting.attendants, 3
    assert_equal meeting.duration, 1
    assert_equal meeting.date, "09/01/2021 19:00 %m/%d/%Y %H:%M"
    
    assert_equal meeting.user, user
  end

  test 'graph execution error' do
    assert perform.is_a? GraphQL::ExecutionError
  end
end