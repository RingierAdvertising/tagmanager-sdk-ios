Pod::Spec.new do |spec|
  spec.name         = "RingierAdSDK"
  spec.version      = "1.0.3"
  spec.summary      = "Ringier Advertising SDK for iOS"
  spec.description  = <<-DESC
    Ringier Advertising SDK for iOS - Tag Manager SDK for managing ad integrations
  DESC
  
  spec.homepage     = "https://github.com/RingierAdvertising/tagmanager-sdk-ios"
  spec.license      = { :type => "Apache-2.0", :file => "LICENSE" }
  spec.author       = { "Ringier Advertising" => "support@ringier-advertising.ch" }
  
  spec.platform     = :ios, "13.0"
  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.0"
  
  spec.source       = { 
    :http => "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.3/RingierAdSDK.xcframework.zip"
  }

  spec.prepare_command = <<-CMD
    if [ ! -d "RingierAdSDK.xcframework" ]; then
      curl -LO https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.3/RingierAdSDK.xcframework.zip
      unzip -o RingierAdSDK.xcframework.zip
      rm RingierAdSDK.xcframework.zip
    fi
  CMD
  
  spec.vendored_frameworks = "RingierAdSDK.xcframework"
  
  spec.dependency "Google-Mobile-Ads-SDK", "12.14.0"
  spec.dependency "AppNexusSDK", "9.1.1"
  spec.dependency "PrebidMobile", "3.1.1"
  
  spec.requires_arc = true

  spec.static_framework = true
end