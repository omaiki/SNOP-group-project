require 'faker'

User.delete_all
Recipe.delete_all
Rating.delete_all
Category.delete_all

users = 20.times.map do
 User.create!( :first_name => Faker::Name.first_name,
 :last_name => Faker::Name.last_name,
 :username => Faker::Internet.user_name,
 :email => Faker::Internet.email,
 :password => '12345678' )
end

Category.create!(category_name: 'breakfast')
Category.create!(category_name: 'main')
Category.create!(category_name: 'appetizer')
Category.create!(category_name: 'dessert')

20.times do
 random_user = User.all.sample
 random_category = Category.all.sample
 Recipe.create!(name: Faker::Beer.name, description: Faker::Lorem.sentence, user_id: random_user.id, category_id: random_category.id, days_on_menu: rand(1..10))
end


40.times do
 random_user = User.all.sample
 random_recipe = Recipe.all.sample
 Rating.create!(rating: rand(1..5),
 user_id: random_user.id,
 recipe_id:
 random_recipe.id)
end
