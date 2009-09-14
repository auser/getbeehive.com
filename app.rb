require "rubygems"
require "sinatra"

get '/' do
  echo "!!!!"
  "First app suucess!"
end

get '/hi' do
  "HEllo!"
end