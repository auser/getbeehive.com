require 'rubygems'
require 'sinatra'
require 'sequel'

Sequel.connect(ENV['DATABASE_URL'] || 'sqlite://my.db')

get '/' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  # ps = `ps aux`.split("\n").join("<br />")
  
  "
    #{dir}
    <br />
    #{env}
    <br />
    #{Sequel.inspect}
    <br />
    #{`ls ../`}
    <br />
    #{`ls ../../../`}
  "
end
