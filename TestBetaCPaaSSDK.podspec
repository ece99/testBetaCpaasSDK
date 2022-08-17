#
# Be sure to run `pod lib lint TestBetaCPaaSSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestBetaCPaaSSDK'
  s.version          = '0.1.0'
  s.summary          = 'Testing SDK with TestBetaCPaaSSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!


  s.homepage         = 'https://github.com/ece99/testBetaCpaasSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ece99' => 'eceserver.ayvaz@gmail.com' }
  s.source           = { :git => 'https://github.com/ece99/testBetaCpaasSDK.git', :tag => '0.1.0' }
  
  s.ios.deployment_target = '11.0'

  s.dependency  'KandyWebRTC'

  s.library = ['c++','icucore','z','sqlite3','stdc++']

  s.ios.frameworks = ['AVFoundation','SystemConfiguration','CFNetwork','Security','OpenGLES','QuartzCore','CoreAudio','CoreMedia','CoreVideo','CoreGraphics','GLKit','VideoToolbox','AudioToolbox','PushKit']
  s.vendored_frameworks = ['CPaaSSDK.xcframework']

  s.preserve_paths = ['CPaaSSDK.xcframework/ios-arm64/CPaaSSDK.framework/SubFrameworks/*.framework', 'CPaaSSDK.xcframework/ios-arm64_x86_64-simulator/CPaaSSDK.framework/SubFrameworks/*.framework']

  s.user_target_xcconfig = {
      'ENABLE_BITCODE' => 'NO',
      'FRAMEWORK_SEARCH_PATHS[sdk=iphoneos*]' => '$(inherited) "${PODS_ROOT}/KandyCPaaSMobileSDK/CPaaSSDK.xcframework/ios-arm64/CPaaSSDK.framework/SubFrameworks"',
      'FRAMEWORK_SEARCH_PATHS[sdk=iphonesimulator*]' => '$(inherited) "${PODS_ROOT}/KandyCPaaSMobileSDK/CPaaSSDK.xcframework/ios-arm64_x86_64-simulator/CPaaSSDK.framework/SubFrameworks"',
      'OTHER_LDFLAGS' => '$(inherited) -framework WebRTC -ObjC',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

end
