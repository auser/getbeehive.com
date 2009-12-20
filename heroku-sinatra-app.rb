# You'll need to require these if you
# want to develop while running with ruby.
# The config/rackup.ru requires these as well
# for it's own reasons.
#
# $ ruby heroku-sinatra-app.rb
#
require 'rubygems'
require 'sinatra'

configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot

  # TIP:  You can get you database information
  #       from ENV['DATABASE_URI'] (see /env route below)
end

# Quick test
get '/' do
  <<-EOE
  <html>
    <head>
      <title>Testing</title>
      <style type="text/css">
        body {
          background: #333; 
          color: #fff;
        }
        #content {
          margin: 30px auto;
          width: 900px;
          background: #FFF;
          border: 5px solid #000;
          color: #333;
          padding: 30px;
        }
        #footer {
          border-top: 1px solid #333;
          background: #eee;
          border-left: 1px solid #333;
          border-right: 1px solid #333;
          border-bottom: 1px solid #333;
          padding: 5px;
        }
      </style>
    </head>
    <body>
      <div id="content">
        <h1>Sweet sweet bash content</h1>
        <p>Man, bash is super powerful</p>
        <h4>Oh shoot, this reminds me</h4>
        <h1>I need to do the <a href="http://git-scm.com/">GIT</a> stuff</h1>
        <div id="footer">Footer</div>
      </div>
    </body>
    </html>
  EOE
end

# Test at <appname>.heroku.com

# You can see all your app specific information this way.
# IMPORTANT! This is a very bad thing to do for a production
# application with sensitive information

get '/env' do
  ENV.inspect
end
