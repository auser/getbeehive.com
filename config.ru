## This is not needed for Thin > 1.0.0
ENV['RACK_ENV'] = "production"

echo "Starting application!!!!"
$:.unshift(File.dirname(__FILE__))
require 'app'

run Sinatra::Application