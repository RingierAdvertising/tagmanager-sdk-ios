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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.2/PrebidMobile.xcframework.zip",
            checksum: "6f74ffe6e9ff35ada7f623e4bae5143a585d11cf42c17dc40ecd8d1d616a76cb"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.2/RingierAdSDK.xcframework.zip",
            checksum: "a3e83060e88d7facf5df3f0f18d85c86859fbf4dddf20d5c56b189f6a17e7771"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.2/Alloy.xcframework.zip",
            checksum: "58de60b95c1ffe6e059a0bc877827758ed90da4dc5ccebd844a89cc529e8fc96"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.2/AppNexusSDKDynamic.xcframework.zip",
            checksum: "0e7f8f13bef8269b01d06ac50b533b9f942c1c8a7bece3bc1c94454c9ab62259"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.2/OMSDK_Microsoft.xcframework.zip",
            checksum: "c58d36273f4a59e5033649ad8b28a1da55700e78789bb4ea214171205aa91a1d"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.2/OMSDK_Prebidorg.xcframework.zip",
            checksum: "fdde313729df907b88b64ea938e874a368284c9b29f3075c1155e030116b6a6d"
        )
    ],
    swiftLanguageVersions: [.v5]
)
