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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "13.1.0")
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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.8/PrebidMobile.xcframework.zip",
            checksum: "6872a9c73898643553f84e2ea65cf489227afe83ccbd9f7961dd9c87ddfb53c8"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.8/RingierAdSDK.xcframework.zip",
            checksum: "c6a00e644403836b3ce80a1282de20ee5f52b9741ea2a11aac94ff066bf74eee"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.8/AppNexusSDKDynamic.xcframework.zip",
            checksum: "26a199f169e85d202325e6877626fa43f0ad8cfc6dab97b7a55b1d4fb5d7d6a2"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.8/OMSDK_Microsoft.xcframework.zip",
            checksum: "1b77b6853f921052648c53a55a1ba2631a5f67b9cf2a00051db9249621eb5e2a"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.8/OMSDK_Prebidorg.xcframework.zip",
            checksum: "e7788ced4853003755e2b4675fa7e7c6d6d7be195a0c0dd635c012e6e6d3c3d0"
        )
    ],
    swiftLanguageVersions: [.v5]
)
