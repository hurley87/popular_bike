class Start < ActiveRecord::Base
	geocoded_by :get_location
	before_save :geocode

	def get_location
		self.location
	end
end
