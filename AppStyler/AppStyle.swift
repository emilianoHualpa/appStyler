import UIKit

struct AppStyle {

    static var mainColor = #colorLiteral(red: 0, green: 0.5843137255, blue: 1, alpha: 1)

    struct Colors {
        let primary1: UIColor
        let darkest: UIColor
        let darker: UIColor
        let light: UIColor
        let primary2: UIColor
        let watermelon: UIColor
        let yellow: UIColor
        let fadedRed: UIColor
        let green: UIColor
        let black: UIColor
        let black80: UIColor
        let black60: UIColor
        let black40: UIColor
        let black20: UIColor
        let black10: UIColor
        let black04: UIColor
        let white: UIColor
        let white02: UIColor
        let brownGray: UIColor
        let dullOrange20: UIColor
    }

    struct Fonts {
        let light: UIFont
        let regular: UIFont
        let medium: UIFont
        let bold: UIFont
        let heavy: UIFont
    }

    private struct MainColors {
        let primary1: UIColor
        let darkest: UIColor
        let darker: UIColor
        let light: UIColor
        let primary2: UIColor
    }

    private static func generateMainColors(from brandColor: UIColor) -> MainColors {

        let primary1 = brandColor
        let darkest = generateColor(fromMultiplier: 0.68)
        let darker = generateColor(fromMultiplier: 0.89)
        let light = generateColor(fromMultiplier: 1.064)
        let primary2 = generateColor(fromMultiplier: 0.778)

        return MainColors(primary1: primary1, darkest: darkest, darker: darker, light: light, primary2: primary2)
    }

    private static func generateColor(fromMultiplier multiplier: CGFloat) -> UIColor {
        return UIColor.init(
            red: mainColor.redValue * multiplier,
            green: mainColor.greenValue * multiplier,
            blue: mainColor.blueValue * multiplier,
            alpha: 1)
    }

    let colors: Colors
    let fonts: Fonts
}

extension AppStyle {
    static let `default`: AppStyle = AppStyle(
        colors: AppStyle.Colors(
            primary1: generateMainColors(from: mainColor).primary1,
            darkest: generateMainColors(from: mainColor).darkest,
            darker: generateMainColors(from: mainColor).darker,
            light: generateMainColors(from: mainColor).light,
            primary2: generateMainColors(from: mainColor).primary2,
            watermelon: #colorLiteral(red: 1, green: 0.2980392157, blue: 0.3803921569, alpha: 1),
            yellow: #colorLiteral(red: 1, green: 0.7764705882, blue: 0.007843137255, alpha: 1),
            fadedRed: #colorLiteral(red: 0.8901960784, green: 0.231372549, blue: 0.3098039216, alpha: 1),
            green: #colorLiteral(red: 0.4509803922, green: 0.7607843137, blue: 0.1215686275, alpha: 1),
            black: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1),
            black80: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 0.8),
            black60: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 0.6),
            black40: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 0.4),
            black20: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 0.2),
            black10: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1),
            black04: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 0.04),
            white: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
            white02: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2),
            brownGray: #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1),
            dullOrange20: #colorLiteral(red: 0.9254901961, green: 0.5960784314, blue: 0.1764705882, alpha: 0.2)
        ),
        fonts: AppStyle.Fonts(
            light: UIFont(name: "Avenir-Light", size: 12)!,
            regular: UIFont(name: "Avenir-Roman", size: 12)!,
            medium: UIFont(name: "Avenir-Medium", size: 12)!,
            bold: UIFont(name: "Avenir-Black", size: 12)!,
            heavy: UIFont(name: "Avenir-Heavy", size: 12)!
        )
    )
}

extension UIColor {
    var redValue: CGFloat{ return CIColor(color: self).red }
    var greenValue: CGFloat{ return CIColor(color: self).green }
    var blueValue: CGFloat{ return CIColor(color: self).blue }
    var alphaValue: CGFloat{ return CIColor(color: self).alpha }
}
