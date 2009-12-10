require 'rubygems'
require 'sinatra'
require "#{File.dirname(__FILE__)}/app"

root=File.join("#{File.dirname(__FILE__)}/site")

puts ">>> Serving: #{root}"
# run Rack::Directory.new("#{root}")
use Rack::Static, :urls => ["/stylesheets", "/javascripts", "/images"], :root => "site"
run Sinatra::Application