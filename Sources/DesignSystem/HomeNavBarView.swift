import SwiftUI

public struct HomeNavBarView: View {
    
    var helpButtonAction: (() -> Void)?
   
    public init(helpButtonAction: (() -> Void)? = nil) {
        self.helpButtonAction = helpButtonAction
    }
    
    public var body: some View {
        NavigationStack {
            VStack {
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        helpButtonAction?()
                    }) {
                        Image.help
                            .padding(.trailing, 20)
                    }
                }
            }
        }
    }
}
