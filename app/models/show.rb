class Show < ActiveRecord::Base

	def self.highest_rating
		self.maximum(:rating)
	# this method should return the highest value in the ratings column. hint: if there is a minimum Active Record 
	# method, might there be a maximum method?
	end

	def self.most_popular_show
		self.find_by(rating: self.highest_rating)
# this method should return the show with the highest rating. hint: use the highest_rating method as a helper method.
	end

	def self.lowest_rating
		self.minimum(:rating)
		# returns the lowest value in the ratings column.
	end

	def self.least_popular_show
		self.find(rating: self.lowest_rating)
		# returns the show with the lowest rating.
	end

	def self.ratings_sum
		self.sum(:rating) 
		# returns the sum of all of the ratings.
	end

	def self.popular_shows
		self.where("rating > ?", 5)
		# returns an array of all of the shows that have a rating greater than 5. 
		# hint: use the where Active Record method.
	end

	def self.shows_by_alphabetical_order
		self.order(:name)
		# according to their names. hint: use the order Active Record method.
	end

end