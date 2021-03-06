#
# Be sure to run `pod lib lint CloudVisionSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CloudVisionSwift'
  s.version          = '0.1.0-alpha'
  s.summary          = 'Swift client library for Google Cloud Vision'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The missing Google Vision API library for Swift
DESC

  s.homepage         = 'https://github.com/ts95/CloudVisionSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ts95' => 'toni.sucic@icloud.com' }
  s.source           = { :git => 'https://github.com/ts95/CloudVisionSwift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ts95'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CloudVisionSwift/Classes/**/*.swift'
  
  # s.resource_bundles = {
  #   'CloudVisionSwift' => ['CloudVisionSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
