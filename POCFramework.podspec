#
#  Be sure to run `pod spec lint POCFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "POCFramework"
  s.version      = "0.0.1"
  s.summary      = "testando distribuição via pods e framework"
  s.homepage     = 'https://github.com/rlnucci/POCFramework'
  s.author       = { "Raissa Nucci" => "raissanucci@gmail.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :http => "https://github.com/rlnucci/POCFramework/raw/master/POCFramework.zip" }

  s.subspec 'Core' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.ios.vendored_frameworks = 'PayCardsRecognizer.framework'
  end

  s.subspec 'Payment' do |ss| 
    ss.ios.deployment_target = '9.0'
    ss.ios.vendored_frameworks = 'POCFramework.framework'
    ss.dependency 'POCFramework/Core'

  s.subspec 'OCR' do |ss| 
    ss.ios.deployment_target = '9.0'
    ss.ios.vendored_frameworks = 'OCR.framework', 'PayCardsRecognizer.framework'
    ss.dependency 'POCFramework/Core'
  end

  #s.ios.vendored_frameworks = 'POCFramework.framework'
  s.license      = { :type => "Visa Developer Center Terms of Use", :text => "https://developer.visa.com/terms" }

end
