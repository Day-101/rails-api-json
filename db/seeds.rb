require 'faker'

User.delete_all
Article.delete_all

30.times do |i|
  User.create(email: Faker::Internet.email, password: 'azerty')
end

30.times do |i|
  articles = Article.create(
    user_id: User.all.sample.id,
    title: Faker::TvShows::BigBangTheory.quote, 
    content: Faker::Lorem.sentence(word_count: 130)
  )
end

puts 'SEED SUCCED !'