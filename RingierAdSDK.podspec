Pod::Spec.new do |spec|
  spec.name         = "RingierAdSDK"
  spec.version      = "1.1.1"
  spec.summary      = "Ringier Advertising SDK for iOS"
  spec.description  = <<-DESC
    Ringier Advertising SDK for iOS - Tag Manager SDK for managing ad integrations
  DESC
  
  spec.homepage     = "https://cdn.ringier-advertising.ch/doc/developer/ios/index.html"
  spec.license      = { :type => "Proprietary", :text => "Copyright (c) Ringier Advertising. All rights reserved." }
  spec.author       = { "Ringier Advertising" => "ppm@ringier.ch" }
  
  spec.platform     = :ios, "13.0"
  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.0"
  
  spec.source       = {
    :http => "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.1/RingierAdSDK.xcframework.zip"
  }

  spec.prepare_command = <<-CMD
    if [ ! -d "RingierAdSDK.xcframework" ]; then
      curl -LO https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.1/RingierAdSDK.xcframework.zip
      unzip -o RingierAdSDK.xcframework.zip
      rm RingierAdSDK.xcframework.zip
    fi

    if [ ! -d "Alloy.xcframework" ]; then
      curl -LO https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.1/Alloy.xcframework.zip
      unzip -o Alloy.xcframework.zip
      rm Alloy.xcframework.zip
    fi
  CMD
  
  spec.vendored_frameworks = "RingierAdSDK.xcframework", "Alloy.xcframework"
  
  spec.dependency "Google-Mobile-Ads-SDK", "13.0.0"
  spec.dependency "AppNexusSDK", "9.1.1"
  spec.dependency "PrebidMobile", "3.3.0"
  
  spec.requires_arc = true

  spec.static_framework = true
end
