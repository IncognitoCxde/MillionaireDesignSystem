import SwiftUI

public struct MainLogoView: View {
    
    public init() {}
    
    public var body: some View {
        VStack(spacing: -10) {
            Image.appLogo
                .resizable()
                .frame(width: 500, height: 500)
                .shadow(color: .cyanGlow, radius: 3)
            Text("Who Wants\nto be a Millionare")
                .font(.system(size: 35, weight: .bold))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.top, -90)
        }
    }
}
