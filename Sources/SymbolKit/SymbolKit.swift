import Foundation

#if canImport(SwiftUI)
import SwiftUI
#endif

#if canImport(UIKit)
import UIKit
#endif

/// A lightweight wrapper around system and custom asset symbols.
public enum Symbol: Equatable, Sendable {
    /// A system-provided SF Symbol name.
    case systemSymbol(String)
    /// A custom asset name in your bundle.
    case custom(String)
}

public extension Symbol {
    /// Returns the symbol name suitable for APIs that expect a system symbol string.
    var toSystemName: String {
        switch self {
        case let .systemSymbol(name):
            return name
        case let .custom(name):
            return name
        }
    }
}

#if canImport(SwiftUI)
public extension Image {
    /// Creates a SwiftUI ``Image`` from a ``Symbol``.
    ///
    /// - Parameter symbol: A system or custom symbol identifier.
    init(symbol: Symbol) {
        switch symbol {
        case let .systemSymbol(name):
            self.init(systemName: name)
        case let .custom(name):
            self.init(name)
        }
    }
}

public extension Label where Title == Text, Icon == Image {
    /// Creates a ``Label`` configured with a ``Symbol`` icon.
    ///
    /// - Parameters:
    ///   - title: The text to display.
    ///   - symbol: A system or custom symbol identifier.
    init(_ title: String, symbol: Symbol) {
        self.init {
            Text(title)
        } icon: {
            Image(symbol: symbol)
        }
    }
}

public extension Button where Label == SwiftUI.Label<Text, Image> {
    /// Creates a ``Button`` that displays a text label with a ``Symbol`` icon.
    ///
    /// - Parameters:
    ///   - title: The text to display.
    ///   - symbol: A system or custom symbol identifier.
    ///   - action: The action to perform when triggered.
    init(_ title: String, symbol: Symbol, action: @escaping () -> Void) {
        self.init(action: action) {
            SwiftUI.Label(title, symbol: symbol)
        }
    }
}
#endif

#if canImport(UIKit)
public extension UIImage {
    /// Creates a ``UIImage`` from a ``Symbol``.
    ///
    /// - Parameter symbol: A system or custom symbol identifier.
    convenience init?(symbol: Symbol) {
        switch symbol {
        case let .systemSymbol(name):
            self.init(systemName: name)
        case let .custom(name):
            self.init(named: name)
        }
    }
}
#endif
