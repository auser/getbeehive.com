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
  user = `whoami`
  env = `env`
  
  "#{pwd}<br />#{user}<br /><br />#{env}"
end