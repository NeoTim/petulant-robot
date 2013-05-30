module PublicApi
  module Tweets
    def self.registered(app)

      app.get "/api/tweets" do
        Tweet.retrieve_and_manipulate_twitter_data(params['query'] ).to_json
      end

      #app.get "/api/tweets/:id" do |id|
        #Tweet.retrieve_tweet_by_id(id).to_json
      #end

    end
  end
end
