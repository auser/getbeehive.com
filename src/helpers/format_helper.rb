module FormatHelper
  
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