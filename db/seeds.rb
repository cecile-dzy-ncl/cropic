# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database of pictures...'
Picture.destroy_all
puts 'Cleaning database of words...'
Word.destroy_all
puts 'Cleaning database of sentences...'
Sentence.destroy_all
puts 'Cleaning database of users...'
User.destroy_all

puts 'Seeding ...'

# User seed
puts 'generating users with password 123456 '

cecile = User.new(email: "cecile.dezy@gmail.com", password: "123456")
cecile.save!

# Sentence seed
puts 'generating sentences'

first_sentence = Sentence.new(phrase: "I said God Damn... God Damn.",
  user_id: cecile.id)
first_sentence.save!

second_sentence = Sentence.new(phrase: "Any time of the day is a good time for pie.",
  user_id: cecile.id)
second_sentence.save!

third_sentence = Sentence.new(phrase: "Besides, isn’t it more exciting when you don’t have permission?",
  user_id: cecile.id)
third_sentence.save!

fourth_sentence = Sentence.new(phrase: "Fuck pride. Pride only hurts, it never helps.",
  user_id: cecile.id)
fourth_sentence.save!

five_sentence = Sentence.new(phrase: "Play with matches, you get burned.",
  user_id: cecile.id)
five_sentence.save!

# Picture seed
puts 'generating sentences'

pic_1 = Picture.new(x: 0,
  y: 0,
  width: 1280,
  height: 720,
  sentence_id: second_sentence.id)
pic_1.save!

# Word seed
puts 'generating sentences'

word_1 = Word.new(x: 0,
  y: 0,
  width: 1280,
  height: 720,
  picture_id: pic_1.id)
word_1.save!

puts "... Seeding finished"
