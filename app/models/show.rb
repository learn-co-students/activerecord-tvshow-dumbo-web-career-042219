class Show < ActiveRecord::Base

  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    find{|show| show.rating == Show.highest_rating}
  end

  def self.lowest_rating
    minimum(:rating)
  end

  def self.least_popular_show
    find{|show| show.rating == Show.lowest_rating}
  end

  def self.ratings_sum
    sum(:rating)
  end

  def self.popular_shows
    select {|show| show.rating > 5}
  end

  def self.shows_by_alphabetical_order
    order(name: :asc)
  end

end
