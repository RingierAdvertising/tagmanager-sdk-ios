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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.5/PrebidMobile.xcframework.zip",
            checksum: "8e640333d789e8b21ba9ab3852603fffbe0a44cfb5f8db4f017a026f4d605eb9"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.5/RingierAdSDK.xcframework.zip",
            checksum: "52111ff86c0aac44248b47f24decf926ce8d61af162aed1c2a0b33391a614649"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.5/AppNexusSDKDynamic.xcframework.zip",
            checksum: "bcd4e0246284e9f2570c1d36e34628d96adb4684b901f372adb538a8ef30ef0a"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.5/OMSDK_Microsoft.xcframework.zip",
            checksum: "b0f4aae4bfef45a1d3d912ef6654fa6010fb4f87d438691fbae339f5092c195b"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.5/OMSDK_Prebidorg.xcframework.zip",
            checksum: "03d283c3528b51fe2f48c863e2daefb5e3276e698e95e1721323c98594c16875"
        )
    ],
    swiftLanguageVersions: [.v5]
)
