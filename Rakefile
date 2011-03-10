require 'bundler'
Bundler::GemHelper.install_tasks

desc "Run tests"
task :test do
  $: << 'lib'
  require 'respond_to'
  require 'minitest/autorun'
  require 'phocus'
  Dir['test/test_*.rb'].each { |test| require test }
end
