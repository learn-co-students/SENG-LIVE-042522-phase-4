# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(username: "Dakota", email: "dakota@dakota.com", bio: 'i love ruby!', password: 'password')
user2 = User.create(username: "Dex", email: "dex@dex.com", bio: 'i love js!', password: 'password')

group = Group.create(name: "SENG-LIVE-042522", location: 'everywhere!!!')

event = Event.create(
  title: 'Rails fundamentals',
  description: 'Rails is awesome!',
  location: 'https://flatironschool.zoom.us/j/96333433409',
  starts_at: '2022-06-27T11:00',
  ends_at: '2022-06-27T13:00',
  group: group,
  user: user
)

Membership.create(user: user, group: group)