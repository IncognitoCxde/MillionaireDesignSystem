//  Sharp-Edged Button Reusable

import SwiftUI

public struct SlantedButtonShape: Shape {
    public func path(in rect: CGRect) -> Path {
    var path = Path()

        let inset: CGFloat = rect.height * 0.3
        let h = rect.height
        let w = rect.width

        path.move(to: CGPoint(x: inset, y: 0))
        path.addLine(to: CGPoint(x: w - inset, y: 0))
        path.addLine(to: CGPoint(x: w, y: h / 2))
        path.addLine(to: CGPoint(x: w - inset, y: h))
        path.addLine(to: CGPoint(x: inset, y: h))
        path.addLine(to: CGPoint(x: 0, y: h / 2))
        path.closeSubpath()

        return path
    }
}

public struct SlantedButton: View {
    public var title: String
    public var gradient: LinearGradient
    public var action: () -> Void

    public init(title: String, gradient: LinearGradient, action: @escaping () -> Void) {
        self.title = title
        self.gradient = gradient
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 28, weight: .semibold))
                .foregroundColor(.white)
                .padding(.vertical, 22)
                .frame(maxWidth: .infinity)
                .background(
                    SlantedButtonShape()
                        .fill(gradient)
                )
                .overlay(
                    SlantedButtonShape()
                        .stroke(Color.white, lineWidth: 3)
                )
        }
        .buttonStyle(.plain)
        .padding(.horizontal, 20)
    }
}


