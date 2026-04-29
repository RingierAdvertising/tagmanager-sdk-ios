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
                .target(name: "Alloy"),
                .target(name: "AppNexusSDKDynamic"),
                .target(name: "OMSDK_Microsoft"),
                .target(name: "OMSDK_Prebidorg")
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.1/PrebidMobile.xcframework.zip",
            checksum: "7bd1bac09f009a659c4ff66bbf40867b56c90d49230253a9355342dfe19c88ec"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.1/RingierAdSDK.xcframework.zip",
            checksum: "20e898570d431a1efc94d80dde9dfaa92c7a945debd62a8f40d6d1a9c1e9bb08"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.1/Alloy.xcframework.zip",
            checksum: "20b8523052a8145ac66d7513769f5b1ae35310820b4befdfa2f8d00ed58a0afd"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.1/AppNexusSDKDynamic.xcframework.zip",
            checksum: "633ca47c30b6daaff54a784074d831e5d60480a07269bebb17451f5575379ef5"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.1/OMSDK_Microsoft.xcframework.zip",
            checksum: "12cca29fc659d14a6ed0cb220b7d794486063c6d84fb7db92339b055f8beec4b"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.1/OMSDK_Prebidorg.xcframework.zip",
            checksum: "932155a41bcc7fa04421689a4056ca84844215ef07a3d7d9faf1ac28156ada1e"
        )
    ],
    swiftLanguageVersions: [.v5]
)
