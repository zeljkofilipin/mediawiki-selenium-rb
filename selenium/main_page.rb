# setup
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

# test
driver.navigate.to 'https://en.wikipedia.beta.wmflabs.org/wiki/Main_Page'
displayed = driver.find_element(:link_text, 'Log in').displayed?
require 'minitest'
MiniTest::Unit::TestCase.new('').assert(displayed)

# teardown
driver.quit
