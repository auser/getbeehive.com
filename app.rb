require 'rubygems'
require 'sinatra'

get '/demo/:name' do
  "<h1>hi #{params[:name]}</h1>"
end

get '/' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  # ps = `ps auxwww`.split("\n").join("<br />")
  
  "
    #{dir}
    <br />
    #{env}
    <br />
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
