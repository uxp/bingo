# This file is used by Rack-based servers to start the application.
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'bingo'

run Bingo::App

