require 'watir-webdriver'
if ENV["HEADLESS"] then
  require 'headless'
  headless = Headless.new
  headless.start

  browser = Watir::Browser.new :phantomjs

  INDEX_OFFSET = 0
  WEBDRIVER = false
else
  browser = Watir::Browser.new :firefox
  INDEX_OFFSET = -1
  WEBDRIVER = true
end

Before do
  @browser = browser
end

at_exit do
  browser.close
end
