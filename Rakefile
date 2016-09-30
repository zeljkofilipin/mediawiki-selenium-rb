desc 'Run all tasks'
task default: %w(rubocop selenium)

require 'rubocop/rake_task'
RuboCop::RakeTask.new

desc 'Run Selenium script'
task :selenium do
  ruby 'selenium.rb'
end
