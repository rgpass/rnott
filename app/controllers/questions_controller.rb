class QuestionsController < ApplicationController
	client = Yelp::Client.new
	include Yelp::V2::Business::Request
  def input
  end

  def output
  end

  def apitest
  	require 'rubygems'
		require 'oauth'
		

		consumer_key = 'snI1BGasyN8zh314MpUvpA'
		consumer_secret = 'jTZKB4h2eGkvw3Ws8BJj5jy1sWc'
		token = 'wONW6HE4NHRnQeryN5vJ_VBug1ChvgWT'
		token_secret = 'iCwa4VXO26HZvDiIvqzs2x9j1a4'

		api_host = 'api.yelp.com'

		consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
		access_token = OAuth::AccessToken.new(consumer, token, token_secret)

		path = "/v2/search?term=restaurants&location=new%20york"

		p access_token.get(path).body

		
client = Yelp::Client.new
		request = Id.new(
     :yelp_business_id => "pjb2WMwa0AfK3L-dWimO8w",
     :consumer_key => 'snI1BGasyN8zh314MpUvpA',
     :consumer_secret => 'jTZKB4h2eGkvw3Ws8BJj5jy1sWc',
     :token => 'wONW6HE4NHRnQeryN5vJ_VBug1ChvgWT',
     :token_secret => 'iCwa4VXO26HZvDiIvqzs2x9j1a4')
 		response = client.search(request)
  end
end