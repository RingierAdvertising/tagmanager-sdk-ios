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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "12.14.0")
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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.4/PrebidMobile.xcframework.zip",
            checksum: "157242582b17780c3e1a90d28ec75c9d41641fe6caae9dd6648898a21015a704"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.4/RingierAdSDK.xcframework.zip",
            checksum: "e64dbb096fc8f7b486df133009b81f83634f454fe6d63d0fa58c8cd20ebb76c2"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.4/AppNexusSDKDynamic.xcframework.zip",
            checksum: "b1bca1efdaeeccbc6f71c2b594a197c60f5e33066db9b697f8035ccdcc58fcab"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.4/OMSDK_Microsoft.xcframework.zip",
            checksum: "2e98a3dea14c1eaf600d6e59cd1456e9f702592aa59368a624eb0ca34ece0028"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.4/OMSDK_Prebidorg.xcframework.zip",
            checksum: "e968742b39f172cfb119fc032409bd26789eb581684f31ee010dcb8f4fbdad3c"
        )
    ],
    swiftLanguageVersions: [.v5]
)
