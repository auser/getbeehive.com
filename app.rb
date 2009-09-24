require 'rubygems'
require 'sinatra'

get '/' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  ps = `ps aux`.split("\n").join("<br />")
  service_mon = `cat /usr/local/bin/service_monitor`
  thin = `cat /usr/local/bin/thin_launcher`
  
  "#{dir}<br />#{env}<br />#{ps}<br />#{service_monitor}<br />#{thin}"
end
