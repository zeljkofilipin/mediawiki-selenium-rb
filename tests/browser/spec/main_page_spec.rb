require 'page-object'
# page object for Main Page
class MainPage
  include PageObject
  page_url 'Main_Page'
  a(:log_in, text: 'Log in')
end

require 'mediawiki_selenium/rspec'
RSpec.describe 'Main page' do
  it 'should have "Log in" link' do
    visit(MainPage) do |page|
      expect(page.log_in_element).to exist
    end
  end
end
