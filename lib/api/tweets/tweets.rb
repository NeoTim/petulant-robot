module PublicApi
  module Tweets
    def self.registered(app)
      app.get "/api/tweets" do
        Tweet.retrieve_and_manipulate_twitter_data(params['query'] ).to_json
      end
    end
  end
end
