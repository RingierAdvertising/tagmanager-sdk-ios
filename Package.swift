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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "13.3.0"),
        // Pulls FBAudienceNetwork 6.21.1 and the Meta mediation
        // adapter 6.21.1.1. Meta's binaries are consumed from
        // Google's and Meta's own distributions rather than re-hosted here.
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-meta", exact: "6.21.101")
    ],
    targets: [
        .target(
            name: "RingierAdSDKWrapper",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "MetaAdapterTarget", package: "googleads-mobile-ios-mediation-meta"),
                .target(name: "PrebidMobile"),
                .target(name: "RingierAdSDK"),
                .target(name: "Alloy"),
                .target(name: "AppNexusSDKDynamic"),
                .target(name: "OMSDK_Microsoft"),
                .target(name: "OMSDK_Prebidorg")
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.3.0/PrebidMobile.xcframework.zip",
            checksum: "a5cd16e26d701d94b27d8b8152e14a6c7cfcb4ca9a953f5fc2c5801b4f1849ad"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.3.0/RingierAdSDK.xcframework.zip",
            checksum: "acd98dd14a9abaea8be2ce6872393c350d6b2bc25f543e8e1c886861f54dfc2f"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.3.0/Alloy.xcframework.zip",
            checksum: "af47d243554a7e207225e45ceeac0e08e546dc8c23519560802002cc532f5a36"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.3.0/AppNexusSDKDynamic.xcframework.zip",
            checksum: "86fa9481842f961a1e99838986e4640557fa93f305bbad3ef73c86cb7024b099"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.3.0/OMSDK_Microsoft.xcframework.zip",
            checksum: "69ccbd1ef02b19e1715444c2c47dc6c85951daec5103a8583d5de7fc086c25ae"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.3.0/OMSDK_Prebidorg.xcframework.zip",
            checksum: "0a0e0c71800583f48c3653c3edfa6ed512a0e2419d2b50931f22e0261fbb8d8c"
        )
    ],
    swiftLanguageVersions: [.v5]
)
