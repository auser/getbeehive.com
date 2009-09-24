require 'rubygems'
require 'sinatra'
require 'sequel'

Sequel.connect(ENV['DATABASE_URL'] || 'sqlite://my.db')

get '/' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  ps = `ps auxwww`.split("\n").join("<br />")
  
  "
    #{dir}
    <br />
    #{env}
    <br />
    #{ps}
    <br />
    #{Sequel.inspect}
    <br />
    #{`ls ../`}
    <br />
    #{`ls ../../../`}
    <br />
    #{`ls ../../../railgun`}
    <br />
    #{`ls ../../../slugs`}
  "
end
