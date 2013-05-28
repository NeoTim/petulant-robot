module PublicApi
  module Tweets
    def self.registered(app)

      ##LIST
      app.get "/api/tweets" do
        @twitter_json = RestClient.get 'http://search.twitter.com/search.json?q=@desksnearme&rpp=20&include_entities=true&result_type=mixed'
        @data = JSON.parse(@twitter_json)
        @tweets = @data["results"].to_json
      end
    end
  end
end

