//  App Icons

import SwiftUI

public extension Bundle {
    static let designSystem: Bundle = .module
}

public extension Image {
    static var appLogo: Image {
        Image("AppLogo", bundle: .designSystem)
    }

    static var cashOut: Image {
        Image("CashOut", bundle: .designSystem)
    }

    static var coin: Image {
        Image("Coin", bundle: .designSystem)
    }

    static var help: Image {
        Image("Help", bundle: .designSystem)
    }

    static var levels: Image {
        Image("Levels", bundle: .designSystem)
    }

    static var like: Image {
        Image("Like", bundle: .designSystem)
    }

    static var phone: Image {
        Image("Phone", bundle: .designSystem)
    }

    static var timer: Image {
        Image("Timer", bundle: .designSystem)
    }
}

