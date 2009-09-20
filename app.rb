require 'rubygems'
require 'sinatra'

get '/' do
  dir = `pwd`
  env = ENV.map {|k,v| "#{k} => #{v}"}
  
  "#{dir}<br />#{env}"
end
