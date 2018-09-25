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

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
  TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/rlnucci/POCFramework'

  s.license      = "MIT"

  s.author       = { "Raissa Nucci" => "raissanucci@gmail.com" }
  s.platform     = :ios, "9.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :http => "https://github.com/rlnucci/POCFramework/raw/master/Framework.zip" }
  s.default_subspec = "Core"

  s.subspec 'Core' do |ss|
    ss.ios.deployment_target = "9.0"
    ss.ios.vendored_frameworks = 'Framework/POCFramework.framework'
    #ss.source_files = 'Aggregated/POCFramework.framework/Headers/*.h'
  end

  s.subspec 'OCR' do |ss|
    ss.ios.deployment_target = "9.0"
    ss.ios.vendored_frameworks = 'Framework/OCR.framework'
    #ss.source_files = 'Aggregated/OCR.framework/Headers/*.h'
    ss.pod_target_xcconfig  = { 'OTHER_SWIFT_FLAGS[config=Debug]' => '-DOCR',  'OTHER_SWIFT_FLAGS[config=Release]' => '-DOCR'}
  end
  
end
