import SwiftUI

public struct JustLogoView: View {
    
    public init() {}
    
    public var body: some View {
        VStack(spacing: -10) {
            Image.appLogo
                .resizable()
                .frame(width: 500, height: 500)
                .shadow(color: .cyanGlow, radius: 3)
        }
    }
}

