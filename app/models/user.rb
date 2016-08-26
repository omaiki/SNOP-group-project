class User < ActiveRecord::Base
  has_many :recipes
  has_many :ratings, through: :recipes
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
