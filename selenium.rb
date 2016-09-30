require "selenium-webdriver"
url = "http://127.0.0.1:8080/wiki/Main_Page"
driver = Selenium::WebDriver.for :firefox
driver.navigate.to url
puts driver.find_element(:link_text, 'Log in').displayed?
driver.quit
