require "rubygems"
require "sinatra"

get '/' do
  open("#{File.dirname(__FILE__)}/index.html").read
end