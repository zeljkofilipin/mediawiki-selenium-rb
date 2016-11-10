require 'page-object'
# page object for Main Page
class MainPage
  include PageObject
  page_url 'Main_Page'
  a(:log_in, text: 'Log in')
end

require 'mediawiki_selenium/cucumber'
Given(/^I am at the main page$/) do
  visit(MainPage)
end

Then(/^"Log in" link should be there$/) do
  expect(on(MainPage).log_in_element).to exist
end
