
# YUCK! http://stackoverflow.com/questions/4755900/how-to-make-jruby-1-6-default-to-ruby-1-9
ENV['JRUBY_OPTS'] ||= '--1.9'

require "bundler/gem_tasks"

gem 'rspec'
require 'rspec/core/rake_task'

desc "Default => :test"
task :default => :test

desc "Run all tests"
task :test => [ :spec ]

desc "Run specs"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
  # Put spec opts in a file named .rspec in root
end

desc "Generate code coverage"
RSpec::Core::RakeTask.new(:coverage) do |t|
  t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
  t.rcov = true
  t.rcov_opts = ['--exclude', 'spec']
end
