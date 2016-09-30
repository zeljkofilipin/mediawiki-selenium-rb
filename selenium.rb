require "selenium-webdriver"
url = "http://127.0.0.1:8080/wiki/Main_Page"
driver = Selenium::WebDriver.for :firefox
puts driver.find_element(:link_text, 'Edit').displayed?
driver.navigate.to url
driver.quit
