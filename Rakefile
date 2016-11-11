desc 'Run all tasks'
task default: %w(
  rubocop selenium spec cucumber
  mediawiki_selenium_rspec mediawiki_selenium_cucumber
)

require 'cucumber/rake/task'
Cucumber::Rake::Task.new

require 'mediawiki_selenium/rake_task'
desc 'Run mediawiki_selenium + Cucumber tests'
MediawikiSelenium::RakeTask.new(
  name: :mediawiki_selenium_cucumber, site_tag: false
)

require 'rubocop/rake_task'
RuboCop::RakeTask.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

desc 'Run mediawiki_selenium + RSpec tests'
RSpec::Core::RakeTask.new(:mediawiki_selenium_rspec) do |t|
  t.pattern = 'tests/browser/spec/**{,/*/**}/*_spec.rb'
end

desc 'Run Selenium script'
task :selenium do
  ruby 'selenium/main_page.rb'
  ruby 'selenium/main_page_watir.rb'
  ruby 'selenium/main_page_page_object.rb'
end
