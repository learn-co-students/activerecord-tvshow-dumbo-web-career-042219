class Show < ActiveRecord::Base

def self.highest_rating
  #returns the TV show with the highest rating
  self.maximum('rating')
end

def self.most_popular_show
  self.find_by(rating: self.highest_rating)
  #returns the tv show with the highest rating
end

def self.lowest_rating
  self.minimum('rating')
  #returns the TV show with the lowest rating
end

def self.least_popular_show
  self.find_by(rating: self.lowest_rating)
  #returns the tv show with the lowest rating
end

def self.ratings_sum
  self.sum(:rating)
  #returns the sum of all the ratings of all the tv shows
end

def self.popular_shows
  self.where("rating > 5")
  #returns an array of all of the shows with a rating above 5
end


def self.shows_by_alphabetical_order
  self.order(:name)

  #returns an array of all of the shows, listed in alphabetical order
end



end
