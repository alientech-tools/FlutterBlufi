#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint blufi_plugin.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'blufi_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Vconnex' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.private_header_files = 'Classes/BlufiLibrary/Security/openssl/include/openssl/*{.h,.cpp,.a}', 'Classes/BlufiLibrary/Security/openssl/include/*{.h,.cpp,.a}', 'Classes/BlufiLibrary/Security/openssl/*{.h,.cpp,.a}',
  'Classes/BlufiLibrary/**/*{.h,.cpp,.a}'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'
  s.ios.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SRCROOT)/../.symlinks/plugins/blufi_plugin/ios/Classes/BlufiLibrary/Security/openssl/include" }
  s.pod_target_xcconfig = {
  'DEFINES_MODULE' => 'YES',
  'ENABLE_BITCODE' => 'NO',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64',
  'OTHER_LDFLAGS[sdk=iphoneos*]' => '-force_load "$(PODS_TARGET_SRCROOT)/Classes/BlufiLibrary/Security/openssl/libcrypto.a"'
  }

  s.user_target_xcconfig = {
    'OTHER_LDFLAGS[sdk=iphoneos*]' => '-force_load "$(PODS_TARGET_SRCROOT)/Classes/BlufiLibrary/Security/openssl/libcrypto.a"'
  }
end

