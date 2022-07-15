# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.', posts_counter: 0)
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

first_post = first_user.posts.create(title: 'Education', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
first_post = first_user.posts.create(title: 'Rich Live', text: 'How to become rich', comments_counter: 0, likes_counter: 0)
first_post = second_user.posts.create(title: 'Sport', text: 'This is my first post about sport', comments_counter: 0, likes_counter: 0)
first_post = second_user.posts.create(title: 'Economy', text: 'We alway need to take control of', comments_counter: 0, likes_counter: 0)