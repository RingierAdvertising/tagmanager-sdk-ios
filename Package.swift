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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "13.0.0")
    ],
    targets: [
        .target(
            name: "RingierAdSDKWrapper",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .target(name: "PrebidMobile"),
                .target(name: "RingierAdSDK"),
                .target(name: "AppNexusSDKDynamic"),
                .target(name: "OMSDK_Microsoft"),
                .target(name: "OMSDK_Prebidorg")
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.9/PrebidMobile.xcframework.zip",
            checksum: "babc5f99064f7c72fa494068a41e3ae70834290db4d2b828cfc3d1b3f0de2efe"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.9/RingierAdSDK.xcframework.zip",
            checksum: "1f2aa0eecf470db2922af75bfc93428024d3f64cca5977bed85a85a4c8aecf45"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.9/AppNexusSDKDynamic.xcframework.zip",
            checksum: "77e5e2c78b5c475acd64fc71e14fb2f7b79e74b125bf9731741898a0f6d9f146"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.9/OMSDK_Microsoft.xcframework.zip",
            checksum: "556d7bad5dac371de246d33367a6e6bfe0745b59ab1da028349863d05e47dfcc"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.9/OMSDK_Prebidorg.xcframework.zip",
            checksum: "140c3222fc3343d37ce68ed4e95a309dfafa9cbcbe4e1d8a0df117136fb4c8b2"
        )
    ],
    swiftLanguageVersions: [.v5]
)
