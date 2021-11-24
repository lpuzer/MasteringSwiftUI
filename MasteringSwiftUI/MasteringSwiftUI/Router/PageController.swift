import SwiftUI

struct PageController: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        VStack {
            
            switch viewRouter.currentPage {
                
            case .counter:
                Counter()
                
            case .progressShapeIndicator:
                ProgressShapeIndicator()
                
            case .swiftUIScrowView:
                SuiftUIScrollView()
                  
            case .swiftUIAnimation:
                SwiftUIAnimation()
                
            case .swiftUIShape:
                SwiftUIShape()
                  
            case .swiftUIStacks:
                SwiftUIStacks()
                
            case .swiftUIState:
                SwiftUIState()
                 
            case .swiftUIStacksTwo:
                SwiftUIStacksTwo()
                    
            }
        }
    }
}

struct PageController_Previews: PreviewProvider {
    static var previews: some View {
        PageController()
            .environmentObject(ViewRouter())
    }
}


struct RouterButton: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var routerButtonPath: Page
    @State var buttonLabel:String
    
    var body: some View {
            Button(action: {
                viewRouter.currentPage = routerButtonPath
            }) {
                Text(buttonLabel)
                    .font(.title3)
                    .frame(width: 70, height: 30)
                
                    .background(Color("buttonColor"))
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
            }
    }
}





