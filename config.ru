require 'rubygems'
require 'sinatra'
require "app.rb"

root_dir = Pathname(__FILE__).dirname

set :environment, ENV['RACK_ENV'].to_sym
set :root,        root_dir
set :app_file,    root_dir.join('app.rb')
disable :run

run Sinatra::Application