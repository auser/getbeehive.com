module FormatHelper
  
  def doc_image(name, desc="Beehive #{name}")
    "<a href='/images/docs/#{name}' ><img src='/images/docs/#{name}' class='doc_image' alt='#{desc}' /></a>"
  end
  
  def define_term(term, &block)
    "<div class='term'><a name='#{term}' class='term-name'>#{term}</a>\n<div class='term-def'>#{capture_haml(&block).chomp}</div></div>\n"
  end
  
  def callout(title=nil, &block)
    callout_img_url = "/images/site/small_hive.png"
    title = title ? "<div class='callout-title'>#{title}</div>" : ""
    "<div class='callout-box'>
    <div class='callout-content'>
    #{title}
    <div class='callout-wrapper'><img src='#{callout_img_url}' class='callout_image'/></div>
    #{capture_haml(&block).chomp}</div>
    </div>\n"
  end
  
  def right_links(&block)
    @right = capture_haml(&block).chomp
  end
  
  def google_analytics(acct, options = {})
    "<script type='text/javascript'>"+
    "var _gaq = _gaq || [];"+
    "_gaq.push(['_setAccount', '#{acct}']);"+
    "_gaq.push(['_trackPageview']);\n"+
    "(function() {"+
    " var ga = document.createElement('script');"+
    "  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';"+
    "  ga.setAttribute('async', 'true');"+
    "  document.documentElement.firstChild.appendChild(ga);"+
    "})();"+
    "</script>"
  end
  
end