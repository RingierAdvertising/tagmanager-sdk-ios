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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.7/PrebidMobile.xcframework.zip",
            checksum: "255d43383ac049ec5c7c5f2fc6c2e918e78f5a8f0295fbb6776e3c345f1de0df"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.7/RingierAdSDK.xcframework.zip",
            checksum: "8f61d51e58cb7e8b51ee784b71370934f4b4ae7f5e9f4fcbb4bb21a1d0d01bca"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.7/AppNexusSDKDynamic.xcframework.zip",
            checksum: "f98c5e09ca7e174afd71881a8558457f6e6701304cd4db61f3497f3cc7dec19b"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.7/OMSDK_Microsoft.xcframework.zip",
            checksum: "8b7a7cd9e336b0aa9c2ba6fee466000f7fe1b1e3b425e42aca20468fc147c256"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.0.7/OMSDK_Prebidorg.xcframework.zip",
            checksum: "ede0cc84fa441ef17319ed8a5f2145a6a93da614f137b7492248f3bddaeac9b2"
        )
    ],
    swiftLanguageVersions: [.v5]
)
