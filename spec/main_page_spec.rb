require 'selenium-webdriver'

RSpec.describe 'Main Page' do
  before(:example) do
    # use MediaWiki Vagrant when running tests locally
    # use beta cluster when running in CI
    url = if ENV['CI'] == 'true'
             'https://en.wikipedia.beta.wmflabs.org/wiki/Main_Page'
           else
             'http://127.0.0.1:8080/wiki/Main_Page'
           end
    @driver = Selenium::WebDriver.for :firefox
    @driver.navigate.to url
  end

  it 'should have "Log in" link' do
    expect(@driver.find_element(:link_text, 'Log in').displayed?).to be true
  end

  after(:example) do
    @driver.quit
  end
end
