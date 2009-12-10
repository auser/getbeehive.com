require "rubygems"
require "sinatra"

get '/' do
  open("site/index.html").read
end

get '/:path.html' do
  open("site/#{params[:path]}.html").read
end

get '/info' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  # ps = `ps auxwww`.split("\n").join("<br />")
  
  "
    #{dir}
    <br />
    #{env}
    <br />
  "
end