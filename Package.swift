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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "13.3.0")
    ],
    targets: [
        .target(
            name: "RingierAdSDKWrapper",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.4/PrebidMobile.xcframework.zip",
            checksum: "8554c6dc6357651acae3b09c6af1818b9cf8280b3f4f0df565afcf6c5ab58ed5"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.4/RingierAdSDK.xcframework.zip",
            checksum: "c3adf014bbc424e321c621088b6a8f7a195b21d22bc9967ac95e21c652a0006f"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.4/Alloy.xcframework.zip",
            checksum: "1e2d974389980e1f83bd6bb111060f15cdbd61fcb7e5dc619fb0055a0a5b5ee6"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.4/AppNexusSDKDynamic.xcframework.zip",
            checksum: "2b73d71ce59d3b225dc657ccdb1a91e4b58efd8462cbaf3d0bb715de43936ffa"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.4/OMSDK_Microsoft.xcframework.zip",
            checksum: "c0438909f89a24c18c48d2a60b7b337a266cec4b8cfa8327e4578d014b384b57"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.4/OMSDK_Prebidorg.xcframework.zip",
            checksum: "eaad43ce9584ce4df7cbc0084532318603c6aaae0ef26e9d4741a99fba02c494"
        )
    ],
    swiftLanguageVersions: [.v5]
)
