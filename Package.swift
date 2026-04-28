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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.0/PrebidMobile.xcframework.zip",
            checksum: "e262e067791876b1918012934a13680b29686407a49d1a2c18b4524ca1166bd6"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.0/RingierAdSDK.xcframework.zip",
            checksum: "6d41eb46b0402d25b3e4c7300b06decf495e07b72cf1f582b67b984d59011cdd"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.0/Alloy.xcframework.zip",
            checksum: "4ec75b3ab8c99b5ccedc2c5ff26db6b4a0f943163f860d4a29019276ad6c0c35"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.0/AppNexusSDKDynamic.xcframework.zip",
            checksum: "242d84cfbfe3fec966c085ad2a4b0c7118a9da64496bf8225d9323a700076814"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.0/OMSDK_Microsoft.xcframework.zip",
            checksum: "78b798df2d13961565531450088bbef7d248a54819ce12592a4401119eeb287d"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.0/OMSDK_Prebidorg.xcframework.zip",
            checksum: "144fd6bfbbd548d857f5737f86512d10ea42febef62a61006ea4610887e8215c"
        )
    ],
    swiftLanguageVersions: [.v5]
)
