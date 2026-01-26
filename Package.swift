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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.6/PrebidMobile.xcframework.zip",
            checksum: "26792fa2856eb460a765506dd1605798177e9b49206025892aba649b9b7b8d31"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.6/RingierAdSDK.xcframework.zip",
            checksum: "eb13a583466718e976c3441f75099fbf598d775f42c97f82de4c0e5fe4ed41ad"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.6/AppNexusSDKDynamic.xcframework.zip",
            checksum: "9e4dbd4b893d88a5ea1d04192175fec55dc9f43206f37fb757060346e7bb024f"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.6/OMSDK_Microsoft.xcframework.zip",
            checksum: "36bcaa28998bc5bbf1150b3bfc7100ade19e43ab394c6111886bf677abbbbbac"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.6/OMSDK_Prebidorg.xcframework.zip",
            checksum: "7069562831a2c417cf41a134c6e700991fe47c07f8c5a963026578bdf6a58b7d"
        )
    ],
    swiftLanguageVersions: [.v5]
)
