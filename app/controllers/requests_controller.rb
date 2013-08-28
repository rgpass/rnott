class RequestsController < ApplicationController
	def req
		@restaurants = Restaurant.search(params)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurants }
    end
	end

	def result
		@restaurants = Restaurant.search(params).where(id: Restaurant.pluck(:id).sample(1))
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurants }
    end
	end
end