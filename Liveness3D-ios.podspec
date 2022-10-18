Pod::Spec.new do |spec|

  spec.name                 = "Liveness3D-ios"
  spec.version              = "5.0.1"
  spec.summary              = "Framework FaceTec for FaceCaptchaSDK para iOS."
  spec.homepage             = "https://www.oititec.com.br/"
  spec.author               = "Facetec | Oititec"
  spec.platform             = :ios, "9.0"
  spec.source               = { :git => "https://github.com/oititec/liveness3d-ios.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks  = "Framework/FaceTecSDK.xcframework"
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
