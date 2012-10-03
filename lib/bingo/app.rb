
require 'sinatra'

module Bingo

  class App < Sinatra::Base

    set :root, File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
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
      {status: 'OK'}.to_json
    end

    get '/about' do
      haml :about
    end

  end

end
