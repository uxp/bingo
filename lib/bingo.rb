
require 'sinatra'
require 'newrelic_rpm'
require 'json'
require 'yaml'

require 'bingo/version'

module Bingo

  autoload :App,   'bingo/app'
  autoload :Card,  'bingo/card'

  def self.root
    File.expand_path(File.dirname(File.dirname(__FILE__)))
  end

end
