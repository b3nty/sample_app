# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.all.each do |x|
  Challenge.all.each do |y|
    UserChallenge.create(user_id: x.id, challenge_id: y.id)
  end
end

5.times do |x|
  User.create(nom: "invité#{x}")
end