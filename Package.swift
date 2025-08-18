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
                "RingierAdSDK"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/appnexus/mobile-sdk-ios-spm", exact: "9.1.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "11.2.0")
    ],
    targets: [
        .target(
            name: "RingierAdSDK",
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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.1/PrebidMobile.xcframework.zip",
            checksum: "a168cc1fec46cafa454ba8f09b5b6459f0b4efc09cfaf9d4dad87ce5fc109e6a"
        ),
        .binaryTarget(
            name: "RingierAdXCFramework",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.1/RingierAdSDK.xcframework.zip",
            checksum: "c380a99492bc4a6fe4c53bbbd11977f4d0aa90ccc80efcca421e6654df56bf6b"
        )
    ],
    swiftLanguageVersions: [.v5]
)
