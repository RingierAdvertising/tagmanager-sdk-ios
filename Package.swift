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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "13.3.0"),
        // Pulls FBAudienceNetwork 6.21.1 and the Meta mediation
        // adapter 6.21.1.1. Meta's binaries are consumed from
        // Google's and Meta's own distributions rather than re-hosted here.
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-meta", exact: "6.21.101")
    ],
    targets: [
        .target(
            name: "RingierAdSDKWrapper",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "MetaAdapterTarget", package: "googleads-mobile-ios-mediation-meta"),
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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.5/PrebidMobile.xcframework.zip",
            checksum: "715026ffc2bba1dd5dc0601b89ce58ef1268b9905fb406683b171bf0d65a7697"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.5/RingierAdSDK.xcframework.zip",
            checksum: "50e59578e40518414dd61feca86445c9be75d14ca0044bb26b33c1589d057e38"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.5/Alloy.xcframework.zip",
            checksum: "b8ffb5c5f0c44cdec5d9b9c5c48689479ec0d68e6612cdcd3f7f174368214ae7"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.5/AppNexusSDKDynamic.xcframework.zip",
            checksum: "dc4964957d25dbee87ab6b5d61d070a8ed609ee19b48a81a87e891b6ab46ba92"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.5/OMSDK_Microsoft.xcframework.zip",
            checksum: "9f13d917b6e82194cb2827c13c6d06b581b7c3433b83ce5682c9413f0f7bddce"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.5/OMSDK_Prebidorg.xcframework.zip",
            checksum: "b2f135b86e26b1c56020cbd3e9f293d62f987d32a9d284bb7ff5507f3a1d1cd1"
        )
    ],
    swiftLanguageVersions: [.v5]
)
