require 'selenium-webdriver'

Before do
  @driver = Selenium::WebDriver.for :chrome
end

After do
  @driver.quit
end

Given(/^I am at the main page$/) do
  @driver.navigate.to 'https://en.wikipedia.beta.wmflabs.org/wiki/Main_Page'
end

Then(/^"Log in" link should be there$/) do
  expect(@driver.find_element(:link_text, 'Log in').displayed?).to be true
end
