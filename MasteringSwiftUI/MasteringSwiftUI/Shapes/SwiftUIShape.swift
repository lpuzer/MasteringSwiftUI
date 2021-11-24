//
//  SwiftUIShape.swift
//  MasteringSwiftUI
//
//  Created by Luciano Puzer on 23/11/21.
//

import SwiftUI

struct SwiftUIShape: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var routerButtonNext: Page = .progressShapeIndicator
    @State private var routerButtonBack: Page = .swiftUIStacksTwo
    
    var body: some View {
        ZStack {
            VStack (alignment: .center) {
                HStack {
                    Spacer()
                    VStack {
                        Path() { path in
                            path.move(to: CGPoint(x: 20, y: 20))
                            path.addLine(to: CGPoint(x: 150, y: 20))
                            path.addLine(to: CGPoint(x: 150, y: 75))
                            path.addLine(to: CGPoint(x: 20, y: 75))
                            path.closeSubpath()
                        }
                        .stroke(Color("buttonColor"), lineWidth: 5)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 20, y: 20))
                            path.addLine(to: CGPoint(x: 150, y: 20))
                            path.addLine(to: CGPoint(x: 150, y: 75))
                            path.addLine(to: CGPoint(x: 20, y: 75))
                        }
                        .fill(Color("buttonColor"))
                        
                        ZStack {
                            Path() { path in
                                path.move(to: CGPoint(x: 20, y: 20))
                                path.addLine(to: CGPoint(x: 150, y: 20))
                                path.addLine(to: CGPoint(x: 150, y: 75))
                                path.addLine(to: CGPoint(x: 20, y: 75))
                            }
                            .fill(Color("buttonColor"))
                            
                            Path() { path in
                                path.move(to: CGPoint(x: 20, y: 20))
                                path.addLine(to: CGPoint(x: 150, y: 20))
                                path.addLine(to: CGPoint(x: 150, y: 75))
                                path.addLine(to: CGPoint(x: 20, y: 75))
                                path.closeSubpath()
                            }
                            .stroke(Color.orange, lineWidth: 7)
                        }
                    }
                    Spacer()
                    VStack {
                        Path() { path in
                            path.move(to: CGPoint(x: 20, y: 20))
                            path.addLine(to: CGPoint(x: 40, y: 20))
                            path.addQuadCurve(to: CGPoint(x: 160, y: 20), control:CGPoint(x: 105, y: -15))
                            path.addLine(to: CGPoint(x: 180, y: 20))
                            path.addLine(to: CGPoint(x: 180, y: 75))
                            path.addLine(to: CGPoint(x: 20, y: 75))
                            path.closeSubpath()
                        }
                        .stroke(Color("buttonColor"), lineWidth: 5)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 20, y: 20))
                            path.addLine(to: CGPoint(x: 40, y: 20))
                            path.addQuadCurve(to: CGPoint(x: 160, y: 20), control:CGPoint(x: 105, y: -15))
                            path.addLine(to: CGPoint(x: 180, y: 20))
                            path.addLine(to: CGPoint(x: 180, y: 75))
                            path.addLine(to: CGPoint(x: 20, y: 75))
                        }
                        .fill(Color("buttonColor"))
                        ZStack {
                            Path() { path in
                                path.move(to: CGPoint(x: 20, y: 20))
                                path.addLine(to: CGPoint(x: 40, y: 20))
                                path.addQuadCurve(to: CGPoint(x: 160, y: 20), control:CGPoint(x: 105, y: -15))
                                path.addLine(to: CGPoint(x: 180, y: 20))
                                path.addLine(to: CGPoint(x: 180, y: 75))
                                path.addLine(to: CGPoint(x: 20, y: 75))
                            }
                            .fill(Color("buttonColor"))
                            Path() { path in
                                path.move(to: CGPoint(x: 20, y: 20))
                                path.addLine(to: CGPoint(x: 40, y: 20))
                                path.addQuadCurve(to: CGPoint(x: 160, y: 20), control:CGPoint(x: 105, y: -15))
                                path.addLine(to: CGPoint(x: 180, y: 20))
                                path.addLine(to: CGPoint(x: 180, y: 75))
                                path.addLine(to: CGPoint(x: 20, y: 75))
                                path.closeSubpath()
                            }
                            .stroke(Color.orange, lineWidth: 7)
                        }
                        
                    }
                    Spacer()
                }
 
                HStack {
                    Spacer()
                    VStack {
                    Path { path in
                        path.move(to: CGPoint(x: 100, y: 150))
                        path.addArc(
                            center: .init(x: 100, y: 150),
                            radius: 70,
                            startAngle: Angle(degrees: -30.0),
                            endAngle: Angle(degrees: 20),
                            clockwise: true)
                    }
                    .fill(Color.green)
                    }
                    Spacer()
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 150))
                            path.addArc(center: .init(x: 100, y: 150), radius: 70, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
                        }
                        .fill(Color(.systemYellow))
                        
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 150))
                            path.addArc(center: .init(x: 100, y: 150), radius: 70, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
                        }
                        .fill(Color(.systemTeal))
                        
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 150))
                            path.addArc(center: .init(x: 100, y: 150), radius: 70, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
                        }
                        .fill(Color(.systemBlue))
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 150))
                            path.addArc(center: .init(x: 100, y: 150), radius: 70, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                        }
                        .fill(Color(.systemPurple))
                    }
                    Spacer()
                }
                
                
                HStack {
                    Spacer()
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 100))
                            path.addArc(center: .init(x: 100, y: 100), radius: 70, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
                        }
                        .fill(Color(.systemYellow))
                        
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 100))
                            path.addArc(center: .init(x: 100, y: 100), radius: 70, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
                        }
                        .fill(Color(.systemTeal))
                        
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 100))
                            path.addArc(center: .init(x: 100, y: 100), radius: 70, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
                        }
                        .fill(Color(.systemBlue))
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 100))
                            path.addArc(center: .init(x: 100, y: 100), radius: 70, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                        }
                        .fill(Color(.systemPurple))
                        .offset(x: 10, y: 10)
                    }
                    Spacer()
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 100))
                            path.addArc(center: .init(x: 100, y: 100), radius: 70, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
                        }
                        .fill(Color(.systemYellow))
                        
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 100))
                            path.addArc(center: .init(x: 100, y: 100), radius: 70, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
                        }
                        .fill(Color(.systemTeal))
                        
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 100))
                            path.addArc(center: .init(x: 100, y: 100), radius: 70, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
                        }
                        .fill(Color(.systemBlue))
                        Path { path in
                            path.move(to: CGPoint(x: 100, y: 100))
                            path.addArc(center: .init(x: 100, y: 100), radius: 70, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                            path.closeSubpath()
                        }
                        .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 3)
                        .offset(x: 10, y: 10)
                        .overlay(
                            Text("25%")
                                .font(.system(.title3, design: .rounded))
                                .bold()
                                .foregroundColor(.blue)
                                .offset(x: 40, y: 5)
                        )
                    }
                    Spacer()
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

struct SwiftUIShape_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIShape()
            .environmentObject(ViewRouter())
    }
}
