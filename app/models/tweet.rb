class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.retrieve_and_manipulate_twitter_data(query)
    @response = RestClient.get "http://search.twitter.com/search.json?q=#{query}&rpp=20"
    @data = JSON.parse(@response)
    @tweets = @data["results"] 
  end

  #def self.retrieve_tweet_by_id(id)
    #@response = RestClient.get "https://api.twitter.com/1/statuses/show.json?id=#{id}"
    #@data = JSON.parse(@response)
  #end
end
