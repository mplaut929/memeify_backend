# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Meme.find_or_create_by(url: "https://i.imgflip.com/1h7in3.jpg", title: "Smart")
Meme.find_or_create_by(url: "https://i.imgflip.com/2wifvo.jpg", title: "Unsettling")
Meme.find_or_create_by(url: "https://i.imgflip.com/1bij.jpg", title: "One does not simply")
Meme.find_or_create_by(url: "https://i.imgflip.com/26am.jpg", title: "Aliens")
Meme.find_or_create_by(url: "https://i.imgflip.com/1e7ql7.jpg", title: "Evil Kermit")

30.times do
  Caption.find_or_create_by(meme_id: rand(1...5), text: Faker::Hipster.sentence, likes: 0)
end
