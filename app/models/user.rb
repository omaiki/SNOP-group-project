class User < ActiveRecord::Base
  has_many :ratings
  has_many :recipes
  has_many :rated_recipes, through: :ratings, source: :recipe
  belongs_to :role

  def admin?
    self.role.name == "Admin"
  end

  def friend?
    self.role.name == "Friend"
  end

  def guest?
    self.role.name == "Guest"
  end

  has_secure_password
end
