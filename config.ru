require 'rubygems'
require 'sinatra'
require "#{File.dirname(__FILE__)}/app"

root=File.join("#{File.dirname(__FILE__)}/site")

use Rack::Static, :urls => ["/stylesheets", "/javascripts", "/images"], :root => "site"
run Sinatra::Application