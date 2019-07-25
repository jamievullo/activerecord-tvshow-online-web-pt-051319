# In this file, you will define a Show class 
# that inherits from ActiveRecord::Base.

class Show < ActiveRecord::Base
  
  def self.highest_rating
    #binding.pry
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    self.order(rating: :desc).first.name
    #self.where(":rating = ?", highest_rating[:name])
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end
  
  def self.least_popular_show
    
  end
  
  def self.ratings_sum
    self.sum(:rating)
  end
  
  def self.popular_shows
    
  end
  
  def self.shows_by_alphabetical_order
    
  end
  
end
