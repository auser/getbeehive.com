require "rubygems"
require "sinatra"

get '/' do
  open("#{File.dirname(__FILE__)}/site/index.html").read
end

get '/new' do
  open("#{File.dirname(__FILE__)}/new/index.html").read
end

get '/:path.html' do
  path_dir = if File.exist?("#{File.dirname(__FILE__)}/#{params[:path]}.html")
    ""
  else
    "site/"
  end
  open("#{File.dirname(__FILE__)}/#{path_dir}#{params[:path]}.html").read
end

get '/info' do
  dir = `pwd`
  env = ENV.map {|k,v| "     #{k} => #{v}<br />"}
  stderr_out = Open3.popen3("touch /var/hello_world") do |stdin, stdout, stderr|
    stderr.read
  end
  "<h1>Info</h1>
    #{dir}
    <br />
    #{env}
    <br />
    #{`ls -l ./../`.gsub(/\n/, '<br />')}
    #{stderr_out}
  "
end