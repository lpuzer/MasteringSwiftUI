import SwiftUI

struct ScrollView_Example: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
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
                Button(action: {
                    viewRouter.currentPage = .counter
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
