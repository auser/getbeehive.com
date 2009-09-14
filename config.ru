## This is not needed for Thin > 1.0.0
ENV['RACK_ENV'] = "production"

require 'app'

run Sinatra::Application