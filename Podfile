def pods
    use_frameworks!
    pod 'Alamofire'
    pod 'Gloss'
    
    
    post_install do |installer|
        installer.pods_project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '3.0'
            end
        end
    end
end
 
target 'Swift3Buddy' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Swift3Buddy
	pods

end

  # target 'Swift3BuddyTests' do
   # inherit! :search_paths
    # Pods for testing
  # end

#end
