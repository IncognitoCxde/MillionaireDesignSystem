import SwiftUI

public struct PrizeRow: View {
    let leftText: String
    let rightText: String
    let gradient: LinearGradient
    @Binding var shineEffect: CGFloat

    public init(leftText: String, rightText: String, gradient: LinearGradient, shineEffect: Binding<CGFloat>?) {
        self.leftText = leftText
        self.rightText = rightText
        self.gradient = gradient
        _shineEffect = shineEffect ?? .constant(0)
    }

    public var body: some View {
        HStack {
            Text(leftText)
                .font(.system(size: 22, weight: .semibold))
                .foregroundColor(.white)

            Spacer()

            Text(rightText)
                .font(.system(size: 22, weight: .semibold))
                .foregroundColor(.white)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 14)
        .background(
            SlantedButtonShape()
                .fill(gradient)
        )
        .overlay(
            SlantedButtonShape()
                .stroke(.white, lineWidth: 3)
        )
        .padding(.horizontal, 20)
        .overlay(
            LinearGradient(
                colors: [Color.white.opacity(0.5), Color.clear, Color.white.opacity(0.5)],
                startPoint: .topLeading,
                endPoint: .topTrailing
            )
            .scaleEffect(x: 1 + shineEffect, y: 1, anchor: .leading)
            .animation(.linear(duration: 1).repeatForever(autoreverses: true), value: shineEffect)
        )
    }
}


public extension LinearGradient {
    
    static let prizeBlue = LinearGradient(
        colors: [
            Color(red: 0.20, green: 0.53, blue: 0.90),
            Color(red: 0.01, green: 0.35, blue: 0.85),
        ],
        startPoint: .top,
        endPoint: .bottom
    )
    
    static let prizeGreen = LinearGradient(
        colors: [
            Color(red: 0.06, green: 0.28, blue: 0.00),
            Color(red: 0.32, green: 0.67, blue: 0.18)
        ],
        startPoint: .bottom,
        endPoint: .top
    )
}

