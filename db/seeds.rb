# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([

    { name: 'Eric', created_at: Time.now, updated_at: Time.now },
    { name: 'John', created_at: Time.now, updated_at: Time.now }

])

Post.create!([

    { title: 'Cars', body: 'my best rocket', user_id: 1, created_at: Time.now, updated_at: Time.now },
    { title: 'Diet', body: 'very fat', user_id: 2, created_at: Time.now, updated_at: Time.now }

])

Comment.create!([

    { text: 'this is a beautifull car', user_id: 1, post_id: 1, created_at: Time.now, updated_at: Time.now },
    { text: 'this is the best car', user_id: 2, post_id: 1, created_at: Time.now, updated_at: Time.now },
    { text: 'Don\'t eat bread', user_id: 1, post_id: 2, created_at: Time.now, updated_at: Time.now },
    { text: 'eat vegeatables', user_id: 2, post_id: 2, created_at: Time.now, updated_at: Time.now }
])