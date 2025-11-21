//  Sharp-Edged Button Reusable

import SwiftUI

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
