import SwiftUI

public struct AnswerOptionRow: View {
    let optionLabel: String
    let optionText: String
    let gradient: LinearGradient
    let action: () -> Void

    
    public init(optionLabel: String, optionText: String, gradient: LinearGradient, action: @escaping () -> Void) {
        self.optionLabel = optionLabel
        self.optionText = optionText
        self.gradient = gradient
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action()
        }) {
            HStack {
                Text(optionLabel)
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(.darkGold)
                    .padding(.leading, 30)
                
                
                Text(optionText)
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.trailing, 60)
            }
            .padding(.vertical, 15)
            .background(
                SlantedButtonShape()
                    .fill(gradient)
                    .frame(width: 370, height: 60)
            )
            .overlay(
                SlantedButtonShape()
                    .stroke(.white, lineWidth: 3)
                    .frame(width: 370, height: 60)
                
            )
        }
        .shadow(color: .black.opacity(0.5), radius: 10)
    }
}

public extension LinearGradient {
    
    static let answerGradient = LinearGradient(
        colors: [
            .answerTeal,
            .answerBlue,
            .answerDark
        ],
        startPoint: .top,
        endPoint: .bottom
    )
    
    static let correctGradient = LinearGradient(
        colors: [
            .answerLightGreen,
            .answerGreen
        ],
        startPoint: .top,
        endPoint: .bottom
    )
    static let wrongGradient = LinearGradient(
        colors: [
            .answerRed,
            .answerDarkRed
        ],
        startPoint: .top,
        endPoint: .bottom
    )
}
