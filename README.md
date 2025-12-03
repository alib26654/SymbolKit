# SymbolKit

Lightweight helpers for working with SF Symbols and custom asset icons across SwiftUI and UIKit.

## Features
- Unified `Symbol` enum for system and custom asset names
- SwiftUI `Image` and `Label` convenience initializers
- UIKit `UIImage` convenience initializer
- Platform support: iOS 15+, macOS 12+, tvOS 15+, watchOS 8+, visionOS 1+

## Requirements
- Swift 6
- Platforms listed above (conditional imports protect unavailable frameworks)

## Installation (Swift Package Manager)
Add the package to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/lcandy2/SymbolKit.git", from: "1.0.0")
]
```

Then add `SymbolKit` to your target dependencies:

```swift
.target(
    name: "YourApp",
    dependencies: ["SymbolKit"]
)
```

## Usage

### Creating symbols
```swift
let system = Symbol.systemSymbol("square.and.arrow.up")
let custom = Symbol.custom("BrandLogo")
```

### SwiftUI
```swift
import SwiftUI
import SymbolKit

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(symbol: .systemSymbol("heart"))
            Label("Favorites", symbol: .systemSymbol("heart.fill"))
            Image(symbol: .custom("BrandLogo")) // requires the asset in your bundle
        }
    }
}
```

### UIKit
```swift
import UIKit
import SymbolKit

let imageView = UIImageView(image: UIImage(symbol: .systemSymbol("person.crop.circle")))
imageView.tintColor = .label
```

### Accessing the raw name
```swift
Symbol.systemSymbol("heart").toSystemName // "heart"
Symbol.custom("BrandLogo").toSystemName    // "BrandLogo"
```

## Testing
Run the package tests:

```sh
swift test
```

SwiftUI tests are conditionally compiled; UIKit coverage runs when UIKit is available (e.g., iOS/tvOS simulators). If you add a custom image test, include a fixture asset in the test bundle.

## Release workflow
The repository includes a manual GitHub Actions workflow (`release.yml`) that:
- Lets you pick the version bump (`major`, `minor`, or `patch`)
- Runs `swift test` and a release build
- Creates and pushes a tag, then publishes a GitHub Release with generated notes

Trigger it from GitHub → Actions → **Release** → **Run workflow**.
