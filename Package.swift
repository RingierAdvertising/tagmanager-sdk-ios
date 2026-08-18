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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.3/PrebidMobile.xcframework.zip",
            checksum: "08ab5aa68d077fb38b0de9ced54b368987dbb74362211c8a93c82e8d9a69dc59"
        ),
        .binaryTarget(
            name: "RingierAdSDK",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.3/RingierAdSDK.xcframework.zip",
            checksum: "ae3872401092a7d5bdd5da7b6bf014cdb73e11b3db30c002aa65ef44f88c260e"
        ),
        .binaryTarget(
            name: "Alloy",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.3/Alloy.xcframework.zip",
            checksum: "950fff382dfca7f8dbca03a67f28e5f11cbf14009ea5e0f680d68feaca3afc7a"
        ),
        .binaryTarget(
            name: "AppNexusSDKDynamic",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.3/AppNexusSDKDynamic.xcframework.zip",
            checksum: "26c187670676a22c3aceddb91d55ebff7fed094746a21ba455fa3324f2b81d00"
        ),
        .binaryTarget(
            name: "OMSDK_Microsoft",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.3/OMSDK_Microsoft.xcframework.zip",
            checksum: "55ac2414f098d47c7355d7b4750cf09f9b404bfcafff3252ec81ff63630b081c"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios/releases/download/1.2.3/OMSDK_Prebidorg.xcframework.zip",
            checksum: "1a1bf0b592725b3e8fb3c1c2f7b4d2e950889b486b3b67e7a7a6ea6cefbe8e64"
        )
    ],
    swiftLanguageVersions: [.v5]
)
