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
  dir_listing = `cd / && cat 'hello world' > /var/test`
  user = `whoami`
  env = `env`
  
  "#{pwd}<br />#{dir_listing}<br />#{user}<br /><br />#{env}"
end