require 'sinatra'
require 'haml'
require 'rest-client'
require 'json'

Dir[File.dirname(__FILE__) + '/**/*.rb'].each do |rb|
  require rb
end

class Api < Sinatra::Base

  set :root, File.dirname(__FILE__)

  before do
    response.headers['Content-Type'] = 'application/json'
  end

  register PublicApi::Tweets

end

