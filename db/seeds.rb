# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cuteness_array = ["very cute", "super_cute", "almost too cute"]

softness_array = ["fluffy", "extremely soft", "the fluffiest softest"]

20.times do Kitten.create(
  name: Faker::Name.name,
  age: Random.rand(0..15),
  cuteness: cuteness_array.sample,
  softness: softness_array.sample,
  image_url: "http://placekitten.com/#{Random.rand(150..400)}/#{Random.rand(150..400)}"
)
end
