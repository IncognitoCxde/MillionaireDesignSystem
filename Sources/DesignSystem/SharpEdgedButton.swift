//  Sharp-Edged Button Reusable

import SwiftUI

// Shape

struct SharpButtonShape: Shape {
    func path(in rect: CGRect) -> Path {
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

// Button

public struct SharpButton: View {
    public var title: String
    public var gradient: LinearGradient
    public var action: () -> Void

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 28, weight: .semibold))
                .foregroundColor(.white)
                .padding(.vertical, 22)
                .frame(maxWidth: .infinity)
                .background(
                    SharpButtonShape()
                        .fill(gradient)
                )
                .overlay(
                    SharpButtonShape()
                        .stroke(Color.white, lineWidth: 3)
                )
        }
        .buttonStyle(.plain)
        .padding(.horizontal, 20)
    }
}

