desc 'Run all tasks'
task default: %w(rubocop selenium spec)

require 'rubocop/rake_task'
RuboCop::RakeTask.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

desc 'Run Selenium script'
task :selenium do
  ruby 'selenium.rb'
end
