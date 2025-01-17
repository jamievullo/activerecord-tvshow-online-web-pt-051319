# In this file, you will define a Show class 
# that inherits from ActiveRecord::Base.

class Show < ActiveRecord::Base
  
  def self.highest_rating
    #binding.pry
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    #binding.pry
    self.order(rating: :desc).first#.name
    #self.where(":rating = ?", highest_rating[:name]) #????
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end
  
  def self.least_popular_show
    self.order(rating: :asc).first
  end
  
  def self.ratings_sum
    self.sum(:rating)
  end
  
  def self.popular_shows
    #binding.pry
    self.where("rating > 5")
  end
  
  def self.shows_by_alphabetical_order
    #binding.pry 
    self.order(name: :asc)
  end
  
end
