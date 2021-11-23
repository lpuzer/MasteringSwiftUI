import SwiftUI

struct ScrollView_Example: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var routerButtonNext: Page = .counter
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        Text("\(formatDate())")
                            .font(.caption)
                            .fontWeight(.light)
                            .foregroundColor(.primary)
                        Text("Your Reading")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                    }.padding()
                    Spacer()
                }
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        Group {
                            CardView(
                                image: "swiftui-button",
                                category: "SwiftUI",
                                heading: "Drawing a Border with Rounded Corners",
                                author: "Simon Ng"
                            )
                            CardView(
                                image: "macos-programming",
                                category: "macOS",
                                heading: "Building a Simple Editing App",
                                author: "Gabriel Theodoropoulos"
                            )
                            CardView(
                                image: "flutter-app",
                                category: "Flutter",
                                heading: "Building a Complex Layout with Flutter",
                                author: "Lawrence Tan"
                            )
                            CardView(
                                image: "natural-language-api",
                                category: "iOS",
                                heading: "What's New in Natural Language API",
                                author: "Sai Kambampati"
                            )
                        }.frame(width: 300)
                            .minimumScaleFactor(0.5)
                    }
                }
                Spacer()
                
                HStack {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Example()
            .environmentObject(ViewRouter())
    }
}


extension ScrollView_Example {
        func formatDate() -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.setLocalizedDateFormatFromTemplate("EEEE, MMM d")
            return dateFormatter.string(from: Date())
        }
}
