class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.retrieve_and_manipulate_twitter_data(query)
    @response = RestClient.get "http://search.twitter.com/search.json?q=#{query}&rpp=20"
    @data = JSON.parse(@response)
    @tweets = @data["results"] 
  end
end
