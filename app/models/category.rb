class Category < ActiveRecord::Base
  has_many :ratings, through: :recipes
  has_many :recipes
end
