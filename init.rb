



# Helpers
helpers do
  def some_helper(*args)
    "Helping"
  end
end

helpers do
  Dir[File.dirname(__FILE__)+"/helpers/*"].each do |lib| 
    eval open(lib).read
  end
end

# Automatic sitemaps
# enable :slickmap

page "/", :layout => :index_layout

# Automatic image dimension calculations
# enable :automatic_image_sizes

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  enable :minify_css
  
  # Minify Javascript on build
  enable :minify_javascript
  
  # Shrink/smush PNG/JPEGs on build
  # enable :smush_pngs
  
  # Enable cache buster
  # enable :cache_buster
  
  # Or use a different image path
  # set :http_path, "/Content/images/"
end