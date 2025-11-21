//  Sharp-Edged Button Reusable

import SwiftUI

public struct SlantedButtonShape: Shape {
    public func path(in rect: CGRect) -> Path {
        
        var path = Path()

                let inset = rect.height * 0.22
                let curve = rect.height * 0.08

                let h = rect.height
                let w = rect.width

                path.move(to: CGPoint(x: inset, y: curve))
                path.addQuadCurve(
                    to: CGPoint(x: w - inset, y: curve),
                    control: CGPoint(x: w / 2, y: -curve)
                )
                path.addLine(to: CGPoint(x: w, y: h / 2))

                path.addQuadCurve(
                    to: CGPoint(x: w - inset, y: h - curve),
                    control: CGPoint(x: w, y: h / 2)
                )

                path.addQuadCurve(
                    to: CGPoint(x: inset, y: h - curve),
                    control: CGPoint(x: w / 2, y: h + curve)
                )

                path.addQuadCurve(
                    to: CGPoint(x: 0, y: h / 2),
                    control: CGPoint(x: 0, y: h / 2)
                )

                path.addQuadCurve(
                    to: CGPoint(x: inset, y: curve),
                    control: CGPoint(x: 0, y: h / 2)
                )

                return path
//    var path = Path()
//
//        let inset: CGFloat = rect.height * 0.3
//        let h = rect.height
//        let w = rect.width
//
//        path.move(to: CGPoint(x: inset, y: 0))
//        path.addLine(to: CGPoint(x: w - inset, y: 0))
//        path.addLine(to: CGPoint(x: w, y: h / 2))
//        path.addLine(to: CGPoint(x: w - inset, y: h))
//        path.addLine(to: CGPoint(x: inset, y: h))
//        path.addLine(to: CGPoint(x: 0, y: h / 2))
//        path.closeSubpath()
//
//        return path
        
//        var path = Path()
//
//               let inset = rect.height * 0.32
//               let h = rect.height
//               let w = rect.width
//
//               path.move(to: CGPoint(x: inset, y: 0))
//
//               path.addQuadCurve(
//                   to: CGPoint(x: w - inset, y: 0),
//                   control: CGPoint(x: w / 2, y: -h * 0.18)
//               )
//
//               path.addQuadCurve(
//                   to: CGPoint(x: w, y: h / 2),
//                   control: CGPoint(x: w, y: h * 0.15)
//               )
//
//               path.addQuadCurve(
//                   to: CGPoint(x: w - inset, y: h),
//                   control: CGPoint(x: w, y: h * 0.85)
//               )
//
//               path.addQuadCurve(
//                   to: CGPoint(x: inset, y: h),
//                   control: CGPoint(x: w / 2, y: h + h * 0.18)
//               )
//
//               path.addQuadCurve(
//                   to: CGPoint(x: 0, y: h / 2),
//                   control: CGPoint(x: 0, y: h * 0.85)
//               )
//
//               path.addQuadCurve(
//                   to: CGPoint(x: inset, y: 0),
//                   control: CGPoint(x: 0, y: h * 0.15)
//               )
//
//               return path
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


