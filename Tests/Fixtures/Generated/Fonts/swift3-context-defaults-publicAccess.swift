// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSFont
  public typealias Font = NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
  public typealias Font = UIFont
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

public struct FontConvertible {
  public let name: String
  public let family: String
  public let path: String

  public func font(size: CGFloat) -> Font! {
    return Font(font: self, size: size)
  }

  public func register() {
    guard let url = url else { return }
    var errorRef: Unmanaged<CFError>?
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, &errorRef)
  }

  fileprivate var url: URL? {
    let bundle = Bundle(for: BundleToken.self)
    return bundle.url(forResource: path, withExtension: nil)
  }
}

public extension Font {
  convenience init!(font: FontConvertible, size: CGFloat) {
    #if os(iOS) || os(tvOS) || os(watchOS)
    if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
      font.register()
    }
    #elseif os(OSX)
    if let url = font.url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
      font.register()
    }
    #endif

    self.init(name: font.name, size: size)
  }
}

// swiftlint:disable identifier_name line_length type_body_length
public enum FontFamily {
  public enum SFNSDisplay {
    public static let black = FontConvertible(name: ".SFNSDisplay-Black", family: ".SF NS Display", path: "SFNSDisplay-Black.otf")
    public static let bold = FontConvertible(name: ".SFNSDisplay-Bold", family: ".SF NS Display", path: "SFNSDisplay-Bold.otf")
    public static let heavy = FontConvertible(name: ".SFNSDisplay-Heavy", family: ".SF NS Display", path: "SFNSDisplay-Heavy.otf")
    public static let regular = FontConvertible(name: ".SFNSDisplay-Regular", family: ".SF NS Display", path: "SFNSDisplay-Regular.otf")
  }
  public enum SFNSText {
    public static let bold = FontConvertible(name: ".SFNSText-Bold", family: ".SF NS Text", path: "SFNSText-Bold.otf")
    public static let heavy = FontConvertible(name: ".SFNSText-Heavy", family: ".SF NS Text", path: "SFNSText-Heavy.otf")
    public static let regular = FontConvertible(name: ".SFNSText-Regular", family: ".SF NS Text", path: "SFNSText-Regular.otf")
  }
  public enum Avenir {
    public static let black = FontConvertible(name: "Avenir-Black", family: "Avenir", path: "Avenir.ttc")
    public static let blackOblique = FontConvertible(name: "Avenir-BlackOblique", family: "Avenir", path: "Avenir.ttc")
    public static let book = FontConvertible(name: "Avenir-Book", family: "Avenir", path: "Avenir.ttc")
    public static let bookOblique = FontConvertible(name: "Avenir-BookOblique", family: "Avenir", path: "Avenir.ttc")
    public static let heavy = FontConvertible(name: "Avenir-Heavy", family: "Avenir", path: "Avenir.ttc")
    public static let heavyOblique = FontConvertible(name: "Avenir-HeavyOblique", family: "Avenir", path: "Avenir.ttc")
    public static let light = FontConvertible(name: "Avenir-Light", family: "Avenir", path: "Avenir.ttc")
    public static let lightOblique = FontConvertible(name: "Avenir-LightOblique", family: "Avenir", path: "Avenir.ttc")
    public static let medium = FontConvertible(name: "Avenir-Medium", family: "Avenir", path: "Avenir.ttc")
    public static let mediumOblique = FontConvertible(name: "Avenir-MediumOblique", family: "Avenir", path: "Avenir.ttc")
    public static let oblique = FontConvertible(name: "Avenir-Oblique", family: "Avenir", path: "Avenir.ttc")
    public static let roman = FontConvertible(name: "Avenir-Roman", family: "Avenir", path: "Avenir.ttc")
  }
  public enum ZapfDingbats {
    public static let regular = FontConvertible(name: "ZapfDingbatsITC", family: "Zapf Dingbats", path: "ZapfDingbats.ttf")
  }
  public enum Public {
    public static let `internal` = FontConvertible(name: "private", family: "public", path: "class.ttf")
  }
}
// swiftlint:enable identifier_name line_length type_body_length

private final class BundleToken {}