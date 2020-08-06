# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  user1 = User.create!(email: 'CJ@yahoo.com')
  user2 = User.create!(email: 'Flarnie@gmail.com')
  user3 = User.create!(email: 'Jeff@msn.com')
  user4 = User.create!(email: 'Georges_St_Pierre@gmail.com')
  user5 = User.create!(email: 'Ned@app_academy.io')

  ShortenedUrl.destroy_all
  url1 = ShortenedUrl.generate(user2, 'https:appacademy.course.open.fix.learn.code/sweinperson/nextmodule')
  url2 = ShortenedUrl.generate(user3, 'https://open.appacademy.io/learn/swe-in-person/sql/url-shortener') 
end