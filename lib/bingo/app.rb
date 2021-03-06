
require 'sinatra'

module Bingo

  class App < Sinatra::Base
    use Rack::Logger

    set :root, Bingo.root
    set :haml, format: :html5

    configure :production, :development do
      enable :logging
    end

    get '/' do
      @card = Bingo::Card.new
      haml :index
    end

    get '/status' do
      content_type 'application/json'
      {
        status:  'OK',
        version: Bingo::VERSION
      }.to_json
    end

    get '/about' do
      haml :about
    end

  end

end
