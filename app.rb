require 'rubygems'
require 'sinatra'

get '/' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  ps = `ps aux`.split("\n").join("<br />")
  log = `tail log/server_9228_ca0e3d7_3410_17777.log`
  
  "#{dir}<br />#{env}<br />#{ps}<br />#{log}"
end
