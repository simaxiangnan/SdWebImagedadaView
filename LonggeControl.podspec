#
# Be sure to run `pod lib lint LonggeControl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LonggeControl'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LonggeControl.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        TODO:  第一次提交版本啦
                       DESC

  s.homepage         = 'https://github.com/18910690342@163.com/LonggeControl'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '18910690342@163.com' => 'simaxiangnan' }
  s.source           = { :git => 'https://github.com/18910690342@163.com/LonggeControl.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LonggeControl/Classes/**/*'
  https://upload-images.jianshu.io/upload_images/4636056-c8f3cfca589b1845.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/538
  # s.resource_bundles = {
  #   'LonggeControl' => ['LonggeControl/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
