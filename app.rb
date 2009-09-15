require "rubygems"
require "sinatra"

get '/' do
  "First app suucess!"
end

get '/hi' do
  "HEllo!"
end

get '/info' do
  
  pwd = `pwd`
  dir_listing = `cd / && ls -l`
  
  "#{pwd}<br />#{dir_listing}"
  
end