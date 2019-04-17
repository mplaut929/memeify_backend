 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Meme.find_or_create_by(url: "https://i.imgflip.com/1h7in3.jpg", gif_url: "https://media.giphy.com/media/d3mlE7uhX8KFgEmY/giphy.gif", title: "Smart")
Meme.find_or_create_by(url: "https://i.imgflip.com/2wifvo.jpg", gif_url: "https://i.imgflip.com/2wifvo.jpg", title: "Unsettling")
Meme.find_or_create_by(url: "https://i.imgflip.com/1bij.jpg", gif_url: "https://media.giphy.com/media/s2oEPbOyDYREI/giphy.gif", title: "One Does Not Simply")
Meme.find_or_create_by(url: "https://i.imgflip.com/26am.jpg", gif_url: "https://media.giphy.com/media/AwrtP9lMXtXiM/giphy.gif", title: "Aliens")
Meme.find_or_create_by(url: "https://i.imgflip.com/1e7ql7.jpg", gif_url: "https://media.giphy.com/media/3oriNSf2iLjMVO7dao/giphy.gif", title: "Evil Kermit")
Meme.find_or_create_by(url: "https://i.imgflip.com/jrj7.jpg", gif_url: "https://media.giphy.com/media/98jU7NxuNSSZ2/giphy.gif", title: "Laughing Men")
Meme.find_or_create_by(url: "https://i.imgflip.com/10r5wh.jpg", gif_url: "https://media.giphy.com/media/9V91DxV5OgoGXjwTrG/giphy.gif", title: "Mr. Krabs Blur")
Meme.find_or_create_by(url: "https://i.imgflip.com/gtj5t.jpg", gif_url: "https://media.giphy.com/media/y8Mz1yj13s3kI/giphy.gif", title: "Oprah")
Meme.find_or_create_by(url: "https://i.imgflip.com/2cp1.jpg", gif_url: "https://media.giphy.com/media/GrUhLU9q3nyRG/giphy.gif", title: "Aging Quickly")
Meme.find_or_create_by(url: "https://i.imgflip.com/9vct.jpg", gif_url: "https://media.giphy.com/media/Zhpvn5KvGEvJu/giphy.gif", title: "Jack Sparrow Being Chased")

10.times do
  Caption.find_or_create_by(meme_id: rand(32..41), text: Faker::Hipster.sentence, likes: 0)
end

10.times do
  Caption.find_or_create_by(meme_id: rand(32..41), text: Faker::Hacker.say_something_smart, likes: 0)
end

10.times do
  Caption.find_or_create_by(meme_id: rand(32..41), text: Faker::TvShows::Seinfeld.quote, likes: 0)
end


10.times do
  Caption.find_or_create_by(meme_id: rand(32..41), text: Faker::TvShows::MichaelScott.quote, likes: 0)
end

10.times do
  Caption.find_or_create_by(meme_id: rand(32..41), text: Faker::TvShows::GameOfThrones.quote, likes: 0)
end
