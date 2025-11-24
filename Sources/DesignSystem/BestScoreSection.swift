import SwiftUI

public struct BestScoreSection: View {
    
    public init() {}
    
    public let bestScore: Int
    
    public var body: some View {
        VStack(spacing: 8) {
            Text("All-time Best Score")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.white.opacity(0.7))
            
            HStack(spacing: 6) {
                Image.coin
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text("$\(bestScore.formatted(.number.grouping(.automatic)))")
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
            }
        }
    }
}
