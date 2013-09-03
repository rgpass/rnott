class RequestsController < ApplicationController
	def req
		@restaurants = Restaurant.search(params)
    #respond_to do |format|
    #  format.html # index.html.erb
      #format.json { render json: @restaurants }
    #end

    @bars = Bar.search(params)
	end

	def result
		@restaurants = Restaurant.search(params).sample(1)
    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @restaurants }
    #end

    @bars = Bar.search(params).sample(1)

    respond_to do | format |
      format.html
      format.js
    end
	end

  def bar
    @bars = Bar.search(params).sample(1)

    respond_to do | format |
      format.js
    end
  end

end