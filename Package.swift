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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.2/PrebidMobile.xcframework.zip",
            checksum: "c0e16d3a75b43eb0d6082d78551115e2b2e629ec6d5c93ab0e89bb4db2645e01"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.2/RingierAdSDK.xcframework.zip",
            checksum: "a496227ac939b3c26da5f3fd7e91b9c2372104597fdef207764e46e53084f3f6"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.2/Alloy.xcframework.zip",
            checksum: "8b06d61d22f9056e54b4506a98eb665dd8994851194edb17024db1d77c0cfbf8"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.2/AppNexusSDKDynamic.xcframework.zip",
            checksum: "39fef12a9253cc3286197fcd189a568fb272f065e3033b2d59d224c1c95b309c"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.2/OMSDK_Microsoft.xcframework.zip",
            checksum: "65d022e4b9f06bb02cb2ef8cde529c8a624d6fcfd590097da711181388f2b3f8"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.1.2/OMSDK_Prebidorg.xcframework.zip",
            checksum: "02c62dd82e2ca50bb2e1711f5ce5155408d2c4c4e7909dde145af42f375a0ca3"
        )
    ],
    swiftLanguageVersions: [.v5]
)
