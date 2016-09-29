require "selenium-webdriver"
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://127.0.0.1:8080/wiki/Main_Page"
puts driver.find_element(:link_text, 'Edit').displayed?
driver.quit
