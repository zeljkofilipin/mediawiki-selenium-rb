require 'mediawiki_api'

RSpec.describe 'Page' do
  before(:all) do
    @client = MediawikiApi::Client.new 'https://en.wikipedia.beta.wmflabs.org/w/api.php'
  end

  it 'Main Page should exist' do
    main_page = @client.action(:query, titles: ['Main Page']).data['pages']
    # => {"1"=>{"pageid"=>1, "ns"=>0, "title"=>"Main Page"}}

    # "1" means the page exists
    expect(main_page['1']).to be_instance_of Hash

    # "-1" means the page does not exist
    expect(main_page['-1']).to be_instance_of NilClass
  end

  it 'Missing Page should not exist' do
    missing_page =
      @client.action(:query, titles: ['Missing Page']).data['pages']
    # => {"-1"=>{"ns"=>0, "title"=>"Missing Page", "missing"=>""}}

    # "1" means the page exists
    expect(missing_page['1']).to be_instance_of NilClass

    # "-1" means the page does not exist
    expect(missing_page['-1']).to be_instance_of Hash
  end
end
