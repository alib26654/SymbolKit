import Testing
@testable import SymbolKit

#if canImport(SwiftUI)
import SwiftUI
#endif

#if canImport(UIKit)
import UIKit
#endif

@Test func symbolReturnsName() {
    #expect(Symbol.systemSymbol("square.and.arrow.up").toSystemName == "square.and.arrow.up")
    #expect(Symbol.custom("BrandLogo").toSystemName == "BrandLogo")
}

#if canImport(SwiftUI)
@Test func createsSwiftUIImage() {
    let systemImage = Image(symbol: .systemSymbol("plus"))
    let customImage = Image(symbol: .custom("CustomAsset"))

    #expect(type(of: systemImage) == Image.self)
    #expect(type(of: customImage) == Image.self)
}

@Test func createsSwiftUILabel() {
    let label = Label("Favorites", symbol: .systemSymbol("heart"))
    #expect(type(of: label) == Label<Text, Image>.self)
}
#endif

#if canImport(UIKit)
@Test func createsUIImageFromSystemSymbol() {
    let image = UIImage(symbol: .systemSymbol("house"))
    #expect(image != nil)
}
#endif
