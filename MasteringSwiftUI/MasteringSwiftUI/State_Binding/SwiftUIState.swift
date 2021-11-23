//
//  MasteringSwiftUI
//  SwiftUI 5.5 / xCode 13.1 
//  Created by Luciano Puzer on 23/11/21.

import SwiftUI

struct SwiftUIState: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var isPlaying = false
    
    var body: some View {
        
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
                Button(action: {
                    viewRouter.currentPage = .counter
                }) {
                    Text("Back")
                        .font(.title3)
                        .frame(width: 70, height: 30)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                
                Spacer()
                
                Button(action: {
                    viewRouter.currentPage = .scrowview_example
                }) {
                    Text("Next")
                        .font(.title3)
                        .frame(width: 70, height: 30)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                Spacer()
            }
        }
    }
}

struct SwiftUIState_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIState()
            .environmentObject(ViewRouter())
    }
}
