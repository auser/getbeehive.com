## This is not needed for Thin > 1.0.0
ENV['RACK_ENV'] = "production"

$:.unshift(File.dirname(__FILE__))
require "rubygems"
require "sinatra"

get '/' do
  puts "!?!?!?!?!?!?!??!?!?!"
  "First app suucess!"
end

get '/hi' do
  "HEllo!"
end