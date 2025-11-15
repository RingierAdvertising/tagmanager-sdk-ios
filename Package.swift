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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.1/PrebidMobile.xcframework.zip",
            checksum: "7fc548e7b62da98aca7d37fe4277d10bfe41f43916bfbad1bc5e1be0c6490621"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.1/RingierAdSDK.xcframework.zip",
            checksum: "7eeab193ff4c3563a6c3613fe067aa8ce6b46412d136ea8b16c53925895e93b2"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.1/AppNexusSDKDynamic.xcframework.zip",
            checksum: "b1bca1efdaeeccbc6f71c2b594a197c60f5e33066db9b697f8035ccdcc58fcab"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.1/OMSDK_Microsoft.xcframework.zip",
            checksum: "2e98a3dea14c1eaf600d6e59cd1456e9f702592aa59368a624eb0ca34ece0028"
        )
    ],
    swiftLanguageVersions: [.v5]
)
