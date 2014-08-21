class WelcomeController < ApplicationController
  def home
  	@starts = Start.all
  	@finishes = Finish.all
  	@trips = []
  	1000.times do |i|
			if @starts[i].latitude != nil && @starts[i].longitude != nil && @finishes[i].latitude != nil && @finishes[i].longitude != nil
				@trips << [@starts[i].latitude, @starts[i].longitude, @finishes[i].latitude, @finishes[i].longitude] 
			end
		end	
  end
end
