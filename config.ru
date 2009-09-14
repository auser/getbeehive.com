## This is not needed for Thin > 1.0.0
ENV['RACK_ENV'] = "production"

puts "Starting application!!!!"
$:.unshift(File.dirname(__FILE__))
require "rubygems"
require "sinatra"

get '/' do
  "First app suucess!"
end

get '/hi' do
  "HEllo!"
end