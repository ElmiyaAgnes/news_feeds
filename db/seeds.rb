# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Create User
User.find_or_create_by(name: 'Luke')
User.find_or_create_by(name: 'Leia')
User.find_or_create_by(name: 'Han')
User.find_or_create_by(name: 'Darth Vader')
User.find_or_create_by(name: 'Boba Fett')
User.find_or_create_by(name: 'Jabba')

#Create Post
Post.find_or_create_by(user_id: 1, content: 'First post')
Post.find_or_create_by(user_id: 4, content: 'Second post')

#Create Comment
Comment.find_or_create_by(user_id: 2, post_id: 1, content: 'First comment')
Comment.find_or_create_by(user_id: 3, post_id: 1, content: 'Second comment')
Comment.find_or_create_by(user_id: 5, post_id: 2, content: 'Third comment')
Comment.find_or_create_by(user_id: 6, post_id: 2, content: 'Fourth comment')