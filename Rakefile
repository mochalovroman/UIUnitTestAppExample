require 'rubygems'
require 'bundler'
Bundler.setup
require 'xctasks/test_task'

desc "Install Pod's"
task :podinstall do
  sh "pod install"
end

XCTasks::TestTask.new(:spec) do |t|
  t.workspace = 'UIUnitTestAppExample.xcworkspace'
  t.runner = :xctool

  t.subtask :functional do |s|
    s.runner = "xcpretty -t -c -r html"
    s.scheme = 'UIUnitTestAppExample'
    s.actions = %w{clean test}



    # Specify a complete destination as a string
    s.destination('platform=iOS Simulator,OS=8.1,name=iPhone 6')

    # Quickly specify a physical device destination
  end
end

task :default => :podinstall 