require "rubygems"
require "sinatra"

get '/' do
  open("site/index.html").read
end

get '/:path.html' do
  open("site/#{params[:path]}.html").read
end

get '/info' do
  
  pwd = `pwd`
  user = `whoami`
  env = `env`
  
  "#{pwd}<br />#{user}<br /><br />#{env}"
end