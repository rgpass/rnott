class RequestsController < ApplicationController
	def req
		@request = Restaurant.all
	end

	def result
		@restaurants = Restaurant.all
	end
end