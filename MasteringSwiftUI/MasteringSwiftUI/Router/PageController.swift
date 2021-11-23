import SwiftUI


struct PageController: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        VStack {
            
            switch viewRouter.currentPage {
            
            case .scrowview_example:
                ScrollView_Example()
                
            case .swiftuistate:
               SwiftUIState()
                
            case .counter:
               Counter()
                
            case .stacks:
               SwiftUIStacks()
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





