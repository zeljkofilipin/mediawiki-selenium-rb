# setup
require 'watir'
driver = Watir::Browser.new :chrome

# test
driver.goto 'en.wikipedia.beta.wmflabs.org/wiki/Main_Page'
present = driver.element(text: 'Log in').present?
raise 'Could not find "Log in" element' unless present

# teardown
driver.quit
