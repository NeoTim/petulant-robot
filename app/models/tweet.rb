class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.retrieve_and_manipulate_twitter_data
    @response = RestClient.get 'http://search.twitter.com/search.json?q=@desksnearme&rpp=20&include_entities=true&result_type=mixed'
    @data = JSON.parse(@response)
    @tweets = @data["results"] 
  end
end
