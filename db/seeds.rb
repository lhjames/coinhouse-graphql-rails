# puts "populating database for Workshop and meetings..."

# Workshop.create!( name: "Introduction to cryptocurrencies", location: 'Paris', description: "An introduction to hot crypto subjects", date: DateTime.strptime("11/03/2021 20:00", "%m/%d/%Y %H:%M"), duration:'0.5', attendants:'5')
# Meeting.create!( name: "Meetup with Nakamoto", location: 'Tokyo', description: "One-hour meetup with Nakamoto", date: DateTime.strptime("09/01/2021 19:00", "%m/%d/%Y %H:%M"), duration:'1', attendants:'1')

puts '...events seeded!'

puts "creating users..."
# User.create!(name: "Lulu", email: "lulu@gmail.com", password: "1234")
User.create!(name: "Mal", email: "mal@gmail.com", password: "1234")
User.create!(name: "Lok", email: "lok@gmail.com", password: "1234")
puts "users created!"
