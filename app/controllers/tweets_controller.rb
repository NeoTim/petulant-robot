class TweetsController < ApplicationController
  respond_to :json, :html
  require 'rest_client'
  require 'json'

  def index
    @tweets = Tweet.retrieve_and_manipulate_twitter_data
    respond_with @tweets
  end
end
