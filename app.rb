require 'rubygems'
require 'sinatra'

get '/' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  ps = `ps aux`.split("\n").join("<br />")
  
  "#{dir}<br />#{env}<br />#{ps}<br />"
end
