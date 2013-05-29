module PublicApi
  module Tweets
    def self.registered(app)

      ##LIST
      app.get "/api/tweets" do
        Tweet.retrieve_and_manipulate_twitter_data.to_json
      end
    end
  end
end

