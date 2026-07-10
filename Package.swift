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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.1/PrebidMobile.xcframework.zip",
            checksum: "9e16a8b531b6807ef9ca8deb1af8339cae1da982c0101b39437fdf7962ac3a98"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.1/RingierAdSDK.xcframework.zip",
            checksum: "5124acf20d4c9bbbba820b0be59065707e6ed140f2a4854f3a5f9103ea1a190b"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.1/Alloy.xcframework.zip",
            checksum: "c9fff899dc4e0281c620f282bfdc2c76fb02019d8c5b8651388320cff54babad"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.1/AppNexusSDKDynamic.xcframework.zip",
            checksum: "f15f8ea3e553525dcf92b6f6c059afab7184ce40c2acbae03e8182533d100bc3"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.1/OMSDK_Microsoft.xcframework.zip",
            checksum: "fcdb6d014baafd0e991eb1ba4f6b34b45800ccf6c149dbfa4138873fc080a3c6"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.1/OMSDK_Prebidorg.xcframework.zip",
            checksum: "6594d9f284492556e0b0d5b9542e36faec28e2423832f944ccd4c6a609a20649"
        )
    ],
    swiftLanguageVersions: [.v5]
)
