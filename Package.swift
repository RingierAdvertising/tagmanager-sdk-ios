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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.6/PrebidMobile.xcframework.zip",
            checksum: "31ff3acc6f94973219ddf1491f4af65c57a7fbb328f7529bda0bfa0f292f858a"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.6/RingierAdSDK.xcframework.zip",
            checksum: "c8d0dab96d3731b561cddb9f3c774522edf65608dc86187a89d6a1ff375d01c3"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.6/Alloy.xcframework.zip",
            checksum: "4a59be2fd51c57c39f300a1087e6762cb97c64857145625c36e8b2b17f7b7570"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.6/AppNexusSDKDynamic.xcframework.zip",
            checksum: "0efa67a2eaae5a4490bf237219d4247f51aa4f93e0d091bbc8ce22706dc0d661"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.6/OMSDK_Microsoft.xcframework.zip",
            checksum: "362fc5a732e9e8b15dfc6ba755b7e494a04630b99cf1300ff448d2a3258e04c5"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.6/OMSDK_Prebidorg.xcframework.zip",
            checksum: "12ebb88ce5a6b02b6d838f3007206866bb5b3217841931fb788b6ca36a5c54d2"
        )
    ],
    swiftLanguageVersions: [.v5]
)
