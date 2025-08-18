## Installation

### Swift Package Manager

Add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios", from: "1.0.4")
]
```

Or add it through Xcode:

1. Go to File → Add Package Dependencies
2. Enter the repository URL: `https://github.com/RingierAdvertising/tagmanager-sdk-ios`
3. Select the version you want to use

## Usage

```swift
import RingierAdSDK

let settings: RingierAdSettings = RingierAdSettings(
    configUrl: configURL,
    debug: false
)

RingierAd.start(settings: settings)
```

## License

© Copyright 2025 Ringier Advertising, Zurich, Switzerland. All rights reserved.
