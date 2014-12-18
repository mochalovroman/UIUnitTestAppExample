require 'rubygems'
require 'bundler'
Bundler.setup
require 'xctasks/test_task'

XCTasks::TestTask.new(:spec) do |t|
  t.workspace = 'UIUnitTestAppExample.xcworkspace'
  t.runner = :xctool

  t.subtask :functional do |s|
    s.runner = 'xcpretty -r html'
    s.scheme = 'UIUnitTestAppExample'
    s.actions = %w{clean test}



    # Specify a complete destination as a string
    s.destination('platform=iOS Simulator,OS=8.1,name=iPhone 5')

    # Quickly specify a physical device destination
  end
end

task :default => :spec
