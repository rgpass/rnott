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
     :consumer_key => 'snI1BGasyN8zh314MpUvpA',
     :consumer_secret => 'jTZKB4h2eGkvw3Ws8BJj5jy1sWc',
     :token => 'wONW6HE4NHRnQeryN5vJ_VBug1ChvgWT',
     :token_secret => 'iCwa4VXO26HZvDiIvqzs2x9j1a4')
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