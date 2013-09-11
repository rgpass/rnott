class RequestsController < ApplicationController
  include Yelp::V2::Business::Request
  require 'json' 

	def req
		@restaurants = Restaurant.search(params)
    #respond_to do |format|
    #  format.html # index.html.erb
      #format.json { render json: @restaurants }
    #end

    @bars = Bar.search(params)

    @w = WeatherUnderground::Base.new
    @v = @w.TextForecast( '30305' ).days
	end

	def result
    @restaurants = Restaurant.search(params).sample(1)
    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @restaurants }
    #end

    @bars = Bar.search(params).sample(1)

    client = Yelp::Client.new
    
    request = Yelp::V2::Business::Request::Id.new(
     :yelp_business_id => "pjb2WMwa0AfK3L-dWimO8w",
     :consumer_key => ENV["YELP_2_CONSUMER_KEY"],
     :consumer_secret => ENV["YELP_2_CONSUMER_SECRET"],
     :token => ENV["YELP_2_TOKEN"],
     :token_secret => ENV["YELP_2_TOKEN_SECRET"])
    @response = client.search(request)
    @rating = @response['rating']

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