//  Sharp-Edged Button Reusable

import SwiftUI

public struct SlantedButtonShape: Shape {
    public func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        let h = rect.height
        let w = rect.width
        
        let inset = h * 0.4
        let r: CGFloat = h * 0.1
        
        let A = CGPoint(x: inset , y: 0)
        let B = CGPoint(x: w - inset, y: 0)
        let C = CGPoint(x: w, y: h / 2)
        let D = CGPoint(x: w - inset, y: h)
        let E = CGPoint(x: inset, y: h)
        let F = CGPoint(x: 0,y: h / 2)
        
        func addRoundedCorner(_ p0: CGPoint, _ p1: CGPoint, _ p2: CGPoint, to path: inout Path) {
            let v1 = CGPoint(x: p0.x - p1.x, y: p0.y - p1.y)
            let v2 = CGPoint(x: p2.x - p1.x, y: p2.y - p1.y)
            
            let len1 = hypot(v1.x, v1.y)
            let len2 = hypot(v2.x, v2.y)
            
            let u1 = CGPoint(x: v1.x / len1, y: v1.y / len1)
            let u2 = CGPoint(x: v2.x / len2, y: v2.y / len2)
            
            let pA = CGPoint(x: p1.x + u1.x * r, y: p1.y + u1.y * r)
            let pB = CGPoint(x: p1.x + u2.x * r, y: p1.y + u2.y * r)
            
            path.addLine(to: pA)
            path.addQuadCurve(to: pB, control: p1)
        }
        path.move(to: CGPoint(x: A.x + r, y: A.y))
        
        addRoundedCorner(A, B, C, to: &path)
        addRoundedCorner(B, C, D, to: &path)
        addRoundedCorner(C, D, E, to: &path)
        addRoundedCorner(D, E, F, to: &path)
        addRoundedCorner(E, F, A, to: &path)
        addRoundedCorner(F, A, B, to: &path)
        
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



