import SwiftUI

public struct PrizeRow: View {
    let leftText: String
    let rightText: String
    let gradient: LinearGradient

    public init(leftText: String, rightText: String, gradient: LinearGradient) {
        self.leftText = leftText
        self.rightText = rightText
        self.gradient = gradient
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

