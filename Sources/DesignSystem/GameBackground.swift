import SwiftUI

public struct GameBackgroundView: View {
    
    public init() {}
    
    public var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [
                    .cyanGlow,
                    .midBlue,
                    .deepBlue,
                    .darkNavy
                ]),
                center: .init(x: 0.3, y: 0.3),
                startRadius: 20,
                endRadius: 600
            ).ignoresSafeArea()
            
            ZStack {
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [
                                .lighterBlue.opacity(0.40),
                                .clear
                            ]),
                            center: .center,
                            startRadius: 0,
                            endRadius: 250
                        )
                    )
                    .blendMode(.screen)
                    .offset(x: -200, y: -300)
                
                
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [
                                .lighterBlue.opacity(0.40),
                                .clear
                            ]),
                            center: .center,
                            startRadius: 0,
                            endRadius: 250
                        )
                    )
                    .blendMode(.screen)
                    .offset(x: 140, y: 210)
            }
        }
    }
}
