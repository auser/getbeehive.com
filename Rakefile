desc "Build"
task :build do
  system "staticmatic build ."
end

desc "Deploy"
task :deploy => [:build] do
  system "git ci -a -m 'Updating site' && git push heroku master"
end