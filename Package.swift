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
        .package(url: "https://github.com/appnexus/mobile-sdk-ios-spm", exact: "9.1.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "11.2.0")
    ],
    targets: [
        .target(
            name: "RingierAdSDKWrapper",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "AppNexusSDK", package: "mobile-sdk-ios-spm"),
                .target(name: "PrebidMobile"),
                .target(name: "RingierAdSDK"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.5/PrebidMobile.xcframework.zip",
            checksum: "a168cc1fec46cafa454ba8f09b5b6459f0b4efc09cfaf9d4dad87ce5fc109e6a"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.5/RingierAdSDK.xcframework.zip",
            checksum: "d82703b0475f16c377de01e0d00546da614cdb682659ab49ef8566ad84405332"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
