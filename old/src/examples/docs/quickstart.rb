git clone http://github.com/auser/beehive.git
cloud start -c config/clouds.rb
# wait a few minutes
cloud list -c config/clouds.rb
# Setup a CNAME for your router instance
curl -i http://yourcname.com:8080