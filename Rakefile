desc 'Run all tasks'
task default: %w(rubocop selenium spec cucumber)

require 'cucumber/rake/task'
Cucumber::Rake::Task.new

require 'rubocop/rake_task'
RuboCop::RakeTask.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

desc 'Run Selenium script'
task :selenium do
  ruby 'selenium/main_page.rb'
  ruby 'selenium/main_page_watir.rb'
end
