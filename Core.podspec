#
#  Be sure to run `pod spec lint Core.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "Core"
  spec.version      = "1.0.0"
  spec.summary      = "Dicoding Core.framework for modularization chapter"
  spec.platform = :ios
  spec.ios.deployment_target = '14.0'
  spec.requires_arc = true
  spec.homepage = "https://github.com/candrarestu23/dicoding_expert_CORE"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author = { "candrarestu23" => "candra.restu22@gmail.com" }
  spec.source = { :git => "https://github.com/candrarestu23/dicoding_expert_CORE.git", :tag => "#{spec.version}" }
  spec.framework = "UIKit"
  spec.source_files = "Core/**/*.{swift}"
  spec.dependency 'RxSwift', '~> 6.2.0'
  spec.dependency 'RealmSwift', '~> 10.17.0'
  spec.swift_version = "5.0"

end
