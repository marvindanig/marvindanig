module ConditionalHtmlHelper
  # Implements the Paul Irish IE conditional comments HTML tag--in HAML.
  # http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/
  def cc_html(options={}, &blk)
    attrs = options.map { |(k, v)| " #{h k}='#{h v}'" }.join('')
    [ "<!doctype html>",
      "<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->",
      "<!--[if lt IE 7]> <html class='no-js ie6 oldie' lang='en'> <![endif]-->",
      "<!--[if IE 7]>    <html class='no-js ie7 oldie' lang='en'> <![endif]-->",
      "<!--[if IE 8]>    <html class='no-js ie8 oldie' lang='en'> <![endif]-->",
      "<!-- Consider adding an manifest.appcache: h5bp.com/d/Offline -->",
      "<!--[if gt IE 8]><!--> <html class='no-js' lang='en'> <!--<![endif]-->",
      capture_haml(&blk).strip, "</html>"
    ].join("\n")
  end

  def h(str); Rack::Utils.escape_html(str); end

end
