## Documentation

Full documentation is available at: [https://cdn.ringier-advertising.ch/doc/developer/ios/index.html](https://cdn.ringier-advertising.ch/doc/developer/ios/index.html)

## Installation

### Swift Package Manager

Add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios", exact: "1.0.3")
]
```

Or add it through Xcode:

1. Go to File → Add Package Dependencies
2. Enter the repository URL: `https://github.com/RingierAdvertising/tagmanager-sdk-ios`
3. Select the version you want to use

### CocoaPods

Add the following to your `Podfile`:

```ruby
pod 'RingierAdSDK', '~> 1.0.3'
```

Then run:

```bash
pod install
```

## Usage

```swift
import RingierAdSDK

let settings: RingierAdSDKSettings = RingierAdSDKSettings(
    configUrl: configURL,
    logLevel: .debug,
    debug: false
)

RingierAd.start(settings: settings)
```

## License

© Copyright 2025 Ringier Advertising, Zurich, Switzerland. All rights reserved.
