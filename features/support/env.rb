require 'rubygems'
require 'watir-webdriver'

$browser = Watir::Browser.new(:firefox)

module Browser
  def browser
    $browser
  end
  
  def environment
    "http://squeaker.heroku.com/"
  end
end

World(Browser)

After do |scenario|
  if scenario.failed?
    # browser.
  end
end

# at_exit do
#   $browser.close
# end