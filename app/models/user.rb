class User < ActiveRecord::Base
	has_many :recipes
	has_many :ratings
  	has_secure_password
end
