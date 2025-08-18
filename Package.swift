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
                "sdk"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/appnexus/mobile-sdk-ios-spm", exact: "9.1.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "11.2.0")
    ],
    targets: [
        .target(
            name: "sdk",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "AppNexusSDK", package: "mobile-sdk-ios-spm"),
                .target(name: "PrebidXCFramework"),
                .target(name: "RingierAdXCFramework")
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "PrebidXCFramework",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.3/PrebidMobile.xcframework.zip",
            checksum: "a168cc1fec46cafa454ba8f09b5b6459f0b4efc09cfaf9d4dad87ce5fc109e6a"
        ),
        .binaryTarget(
            name: "RingierAdXCFramework",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.3/RingierAdSDK.xcframework.zip",
            checksum: "dae1ee7d401b71b7845ee8152ea7d39a51b12545fbf1d2f68b07d1ef98fe4dd5"
        )
    ],
    swiftLanguageVersions: [.v5]
)
