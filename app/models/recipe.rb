class Recipe < ActiveRecord::Base
  has_many :ratings
  belongs_to :category
  belongs_to :user
  has_many :sold_dishes
end
