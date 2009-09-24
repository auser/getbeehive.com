require 'rubygems'
require 'sinatra'

get '/' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  ps = `ps aux`.split("\n").join("<br />")
  service_mon = `cat /usr/local/bin/service_monitor`
  
  "#{dir}<br />#{env}<br />#{ps}<br />#{service_monitor}"
end
