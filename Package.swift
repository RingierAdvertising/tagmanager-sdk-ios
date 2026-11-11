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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.7/PrebidMobile.xcframework.zip",
            checksum: "9375484767a409f0c10a2de51291df26fda355db0fca5127e573e32fc0719b25"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.7/RingierAdSDK.xcframework.zip",
            checksum: "395c35ec36098bb268e01e6c612cbe1ef5141c31c57e5ef28290b02b3040ce33"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.7/Alloy.xcframework.zip",
            checksum: "ae6fc87d091d148e3c2a1833ccb1ae15e4db2420a38ec713cf3e7e203ef53416"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.7/AppNexusSDKDynamic.xcframework.zip",
            checksum: "0aa8fa6130e15a9c21adea50817ead2bcd24dcbd40424f4e3e7067a4c8768883"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.7/OMSDK_Microsoft.xcframework.zip",
            checksum: "382caad5f3e3aa1731da85c00f4a4b4bf2549385831dba4036dcb52ad47b64c3"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.7/OMSDK_Prebidorg.xcframework.zip",
            checksum: "5cfd82f33a8146c73fb9482f39d91e4b3cc70b81ed25f8ecc5ad1fd686ef6e92"
        )
    ],
    swiftLanguageVersions: [.v5]
)
