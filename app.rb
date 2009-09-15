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
  dir_listing = `cd / && ls`
  user = `whoami`
  
  "#{pwd}<br />#{dir_listing}<br />#{user}"
  
end