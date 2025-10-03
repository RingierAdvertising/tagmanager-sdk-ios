// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "RingierAd",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "RingierAdSDK",
            targets: [
                "RingierAdSDKWrapper"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "11.13.0")
    ],
    targets: [
        .target(
            name: "RingierAdSDKWrapper",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .target(name: "PrebidMobile"),
                .target(name: "RingierAdSDK"),
                .target(name: "AppNexusSDKDynamic"),
                .target(name: "OMSDK_Microsoft")
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.0/PrebidMobile.xcframework.zip",
            checksum: "d4ccc1c975ed0436ffd30fab62867aa843e0c7d1e7bbe59fa2574cbe5b2a486c"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.0/RingierAdSDK.xcframework.zip",
            checksum: "acbfc319f96d08929a3808fcda952e41dbe3c9a064f625e8be2afcb3b14f9e16"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.0/AppNexusSDKDynamic.xcframework.zip",
            checksum: "9616dd4f3fbeec3a3b0fba771c0807a1ec27ee37accf5fa6cceca0350757a719"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.0/OMSDK_Microsoft.xcframework.zip",
            checksum: "d160a3520261369220c9a852458f297e3f709585da193460d3f243a2f99e3c37"
        )
    ],
    swiftLanguageVersions: [.v5]
)
