import SwiftUI

public struct QuestionHeaderView: View {
    
    public init() {}
    
    public var questionNumber: Int
    public var prizeValue: String
    
    public var body: some View {
            VStack {
                Text("QUESTION #\(questionNumber)")
                    .font(.title3)
                    .foregroundColor(.white.opacity(0.6))
                                
                Text("$\(prizeValue)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()

            }
            .padding()
        }
}

// MARK: - Note 4 Self, example usage

//struct ContentView: View {
//    var body: some View {
//        ZStack {
//            GameBackgroundView()
//            QuestionHeaderView(questionNumber: 1, prizeValue: "500")
//        }
//    }
//}
//#Preview {
//    ContentView()
//}
