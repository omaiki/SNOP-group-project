class Recipe < ActiveRecord::Base
  has_many :ratings
  has_many :user_ratings, through: :ratings, source: :user
  belongs_to :category
  belongs_to :user
  has_many :sold_dishes

  def avg_rating
    return 0 if self.ratings.empty?
    avg = 0
    self.ratings.each do |rating|
      avg += rating.rating
    end
    avg/self.ratings.length
  end

  def self.avg_rating
     results = Recipe.all.sort {|a,b| b.avg_rating <=> a.avg_rating}
  end

end

