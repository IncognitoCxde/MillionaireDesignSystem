import SwiftUI

public struct LifelineButton: View {
    public var gradient: LinearGradient
    public var content: AnyView
    public var action: () -> Void
    
    public init(
        gradient: LinearGradient,
        @ViewBuilder content: () -> some View,
        action: @escaping () -> Void
    ) {
        self.gradient = gradient
        self.content = AnyView(content())
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            content
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)
                .frame(width: 100, height: 80)
                .background(
                    Ellipse()
                        .fill(gradient)
                )
                .overlay(
                    Ellipse()
                        .stroke(Color.white, lineWidth: 5)
                )
        }
        .buttonStyle(.plain)
    }
}

public extension LinearGradient {
    static let lifelineBlue = LinearGradient(
        colors: [
            Color(red: 0.08, green: 0.28, blue: 0.52),
            Color(red: 0.01, green: 0.04, blue: 0.20)
        ],
        startPoint: .top,
        endPoint: .bottom
    )
}
