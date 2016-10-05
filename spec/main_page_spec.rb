require 'selenium-webdriver'

RSpec.describe 'Main Page' do
  before(:example) do
    @driver = Selenium::WebDriver.for :firefox
  end

  after(:example) do
    @driver.quit
  end

  it 'should have "Log in" link' do
    @driver.navigate.to 'https://en.wikipedia.beta.wmflabs.org/wiki/Main_Page'
    expect(@driver.find_element(:link_text, 'Log in').displayed?).to be true
  end
end
