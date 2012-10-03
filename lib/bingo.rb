
require 'sinatra'
require 'newrelic_rpm'
require 'json'

require 'bingo/app'
require 'bingo/card'

module Bingo

  def self.run
    run Bingo::App
  end

end
