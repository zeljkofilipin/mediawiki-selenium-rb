require 'selenium-webdriver'

# setup
# use MediaWiki Vagrant when running tests locally
# use beta cluster when running in CI
url = if ENV['CI'] == 'true'
        'https://en.wikipedia.beta.wmflabs.org/wiki/Main_Page'
      else
        'http://127.0.0.1:8080/wiki/Main_Page'
      end
driver = Selenium::WebDriver.for :firefox
driver.navigate.to url

# test
puts driver.find_element(:link_text, 'Log in').displayed?

# teardown
driver.quit
