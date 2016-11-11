desc 'Run all tasks'
task default: %w(rubocop selenium spec cucumber mediawiki_selenium_cucumber)

require 'cucumber/rake/task'
Cucumber::Rake::Task.new

require 'mediawiki_selenium/rake_task'
MediawikiSelenium::RakeTask.new(
  name: 'mediawiki_selenium_cucumber', site_tag: false
)

require 'rubocop/rake_task'
RuboCop::RakeTask.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

desc 'Run Selenium script'
task :selenium do
  ruby 'selenium/main_page.rb'
  ruby 'selenium/main_page_watir.rb'
  ruby 'selenium/main_page_page_object.rb'
end
