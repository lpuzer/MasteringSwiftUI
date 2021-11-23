import SwiftUI

struct PageController: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        VStack {
            
            switch viewRouter.currentPage {
                
            case .scrowview_example:
                ScrollView_Example()
                
            case .counter:
                Counter()
                
            case .swiftuistate:
                SwiftUIState()
                
            case .swiftuistacks:
                SwiftUIStacks()
                
            case .swiftuiview_exerciseTwo:
                SwiftUIView_exerciseTwo()
                
            case .swiftuishape:
                SwiftUIShape()
                   
            case .progressshapeindicador:
                ProgressShapeIndicator()
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





