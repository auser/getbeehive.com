require "rubygems"
require "sinatra"

get '/' do
  open("#{File.dirname(__FILE__)}/site/index.html").read
end

get '/:path.html' do
  open("#{File.dirname(__FILE__)}/site/#{params[:path]}.html").read
end

get '/info' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  stderr_out = Open3.popen3("curl -i http://google.com -o ./../var/hi") do |stdin, stdout, stderr|
    stderr.read
  end
  # ps = `ps auxwww`.split("\n").join("<br />")
  
  "
    #{dir}
    <br />
    #{env}
    <br />
    #{`ls -l ./../`.gsub(/\n/, '<br />')}
    #{stderr_out}
  "
end