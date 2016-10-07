# setup
require 'watir'
driver = Watir::Browser.new :firefox

# test
driver.goto 'en.wikipedia.beta.wmflabs.org/wiki/Main_Page'
present = driver.element(text: 'Log in').present?
require 'minitest'
MiniTest::Unit::TestCase.new('').assert(present)

# teardown
driver.quit
