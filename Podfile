source 'https://github.com/CocoaPods/Specs.git'
target 'UIUnitTestAppExampleTests', :exclusive => true do
  pod 'KIF', '~> 3.1.0', :configurations => ['Debug']
end
post_install do |installer_representation|
    installer_representation.project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        end
    end
end