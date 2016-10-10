require 'mediawiki_selenium/rspec'
require 'mediawiki_selenium/pages'

RSpec.describe 'Login page' do
  it 'should have "Log in" button' do
    visit(LoginPage) do |page|
      expect(page.login_element).to exist
    end
  end
end
