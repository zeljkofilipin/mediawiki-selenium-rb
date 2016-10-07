require 'page-object'
require 'page-object/page_factory'
include PageObject::PageFactory

# page object for Main Page
class MainPage
  include PageObject
  page_url 'http://en.wikipedia.beta.wmflabs.org/wiki/Main_Page'
  a(:log_in, text: 'Log in')
end

# setup
require 'selenium-webdriver'
@browser = Selenium::WebDriver.for :firefox

# test
visit MainPage
exists = on(MainPage).log_in_element.exists?
require 'minitest'
MiniTest::Unit::TestCase.new('').assert(exists)

# teardown
@browser.quit
