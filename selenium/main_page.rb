# setup
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

# test
driver.navigate.to 'https://en.wikipedia.beta.wmflabs.org/wiki/Main_Page'
displayed = driver.find_element(:link_text, 'Log in').displayed?
raise 'Could not find "Log in" element' unless displayed

# teardown
driver.quit
