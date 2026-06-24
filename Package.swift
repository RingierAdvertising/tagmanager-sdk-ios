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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.0/PrebidMobile.xcframework.zip",
            checksum: "3a83c85e378c404e9ece5cbf2aedbe000b2bbe78a1b254a97939768062e7eeef"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.0/RingierAdSDK.xcframework.zip",
            checksum: "6a5618191cb81bea4f14eb5d17adabcd7c2121bf25087ab2212d7810fab22c12"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.0/Alloy.xcframework.zip",
            checksum: "4fc833534f094660e4bc4f6a2760943785a2f0ebf3a0384775d26224b551beaa"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.0/AppNexusSDKDynamic.xcframework.zip",
            checksum: "d75f8fabe4420226c479b2a719287fdbd99adf8a7a3cac11c2f3d646b1f44670"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.0/OMSDK_Microsoft.xcframework.zip",
            checksum: "f1a3ff131b226134f77df996870c64c5dbea16951f108c4e34a37256190029bf"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.0/OMSDK_Prebidorg.xcframework.zip",
            checksum: "e69ab6ef8c528551569107185f3506fb75649a348236a8d524da882fdbe39665"
        )
    ],
    swiftLanguageVersions: [.v5]
)
