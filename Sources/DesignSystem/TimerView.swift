import SwiftUI

public struct TimerView: View {
    
    @Binding var remainingTime: Int
    public var onTimeUp: (() -> Void)?
    
    public init(remainingTime: Binding<Int>, onTimeUp: (() -> Void)? = nil) {
        self._remainingTime = remainingTime
        self.onTimeUp = onTimeUp
    }
    
    public var body: some View {
        HStack {
            Image.timer
            Text("\(remainingTime)")
        }
        .font(.system(size: 24, weight: .bold))
        .foregroundColor(.white)
        .frame(width: 90, height: 50)
        .background(Capsule().fill(timerBackgroundColor)
        )
        .padding()
        .onChange(of: remainingTime) { newValue in
            if newValue == 0 {
                onTimeUp?()
            }
        }
    }
    
    public var timerBackgroundColor: Color {
        if remainingTime <= 10 {
            return .answerDarkRed.opacity(0.7)
        } else if remainingTime <= 20 {
            return .darkGold.opacity(0.7)
        } else {
            return Color.white.opacity(0.1)
        }
    }
}

// MARK: - Note 4 self, example of usage

//struct ContentView: View {
//    @State private var timeRemaining = 30
//
//    var body: some View {
//        ZStack {
//            GameBackgroundView()
//            VStack {
//                TimerView(remainingTime: $timeRemaining,
//                          onTimeUp: {
//                              print("Time is up!")
//                          })
//                    .onAppear {
//                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
//                            DispatchQueue.main.async {
//                                if timeRemaining > 0 {
//                                    timeRemaining -= 1
//                                }
//                            }
//                        }
//                    }
//            }
//        }
//    }
//}
