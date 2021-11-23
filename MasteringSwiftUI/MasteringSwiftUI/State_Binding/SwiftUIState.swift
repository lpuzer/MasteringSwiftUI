//
//  MasteringSwiftUI
//  SwiftUI 5.5 / xCode 13.1 
//  Created by Luciano Puzer on 23/11/21.

import SwiftUI

struct SwiftUIState: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var routerButtonNext: Page = .swiftuistacks
    @State private var routerButtonBack: Page = .counter
    @State private var isPlaying = false
    
    var body: some View {
        
        ZStack {
            VStack {
                Spacer()
                Button(action: {
                    self.isPlaying.toggle()
                    
                }) {
                    Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                        .font(.system(size: 150))
                        .foregroundColor(isPlaying ? .red : .green)
                }
                
                Spacer()

                    HStack {
                        Spacer()
                        RouterButton(routerButtonPath: $routerButtonBack, buttonLabel: "Back")
                        Spacer()
                        RouterButton(routerButtonPath: $routerButtonNext, buttonLabel: "Next")
                        Spacer()
                    }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color("MainBackground")
                    .ignoresSafeArea()
        }
        }
    }


struct SwiftUIState_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIState()
            .environmentObject(ViewRouter())
    }
}
