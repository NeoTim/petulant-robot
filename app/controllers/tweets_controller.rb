class TweetsController < ApplicationController
  respond_to :json, :html
  require 'rest_client'
  require 'json'

  def index
    @response = RestClient.get 'http://search.twitter.com/search.json?q=@desksnearme&rpp=20&include_entities=true&result_type=mixed'
    @data = JSON.parse(@response)
    @tweets = @data["results"]
    respond_with @tweets
  end
end
