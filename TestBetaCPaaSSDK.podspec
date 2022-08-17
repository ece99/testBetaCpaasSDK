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
  s.homepage         = 'https://github.com/ece99/testBetaCpaasSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.platform          = :ios
  s.author           = { 'ece99' => 'eceserver.ayvaz@gmail.com' }
  s.source           = { :git => 'https://github.com/ece99/testBetaCpaasSDK.git', :tag => '0.1.0' }
  s.ios.deployment_target = '11.0'
  s.dependency  'KandyWebRTC'
  s.library = ['c++','icucore','z','sqlite3','stdc++']
  s.ios.frameworks = ['AVFoundation','SystemConfiguration','CFNetwork','Security','OpenGLES','QuartzCore','CoreAudio','CoreMedia','CoreVideo','CoreGraphics','GLKit','VideoToolbox','AudioToolbox','PushKit']
  s.vendored_frameworks = ['CPaaSSDK.xcframework']
  s.user_target_xcconfig = {
      'ENABLE_BITCODE' => 'NO',
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
      'OTHER_LDFLAGS' => '$(inherited) -framework WebRTC -ObjC',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end
