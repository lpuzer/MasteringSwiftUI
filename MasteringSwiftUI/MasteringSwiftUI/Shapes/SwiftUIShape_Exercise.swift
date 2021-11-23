//
//  SwiftUIShape_Exercise.swift
//  MasteringSwiftUI
//
//  Created by Luciano Puzer on 23/11/21.
//

import SwiftUI

struct SwiftUIShape_Exercise: View {
    var body: some View {
        VStack {
            HStack {
            Path() { path in
                path.move(to: CGPoint(x: 20, y: 20))
                path.addLine(to: CGPoint(x: 20, y: 20))
                path.addQuadCurve(to: CGPoint(x: 180, y: 20), control:CGPoint(x: 105, y: -15))
                path.addLine(to: CGPoint(x: 180, y: 20))
                path.addLine(to: CGPoint(x: 180, y: 75))
                path.addLine(to: CGPoint(x: 20, y: 75))
            }
            .fill(Color("buttonColor"))
                
                Path() { path in
                    path.move(to: CGPoint(x: 0, y: 30))
                    path.addQuadCurve(to: CGPoint(x: 180, y: 30), control:
                                        CGPoint(x: 100, y: -15))
                    path.addRect(CGRect(x: 0, y: 30, width: 180, height: 40))
                }
                .fill(Color.green)

            }
            
            Spacer()
            Button(action: {
                // Action to perform
            }) {
                Text("Test")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50)
                    .background(Dome().fill(Color.red))
            }

            Spacer()
            
            
            
        }.padding()
    }
}

struct SwiftUIShape_Exercise_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIShape_Exercise()
    }
}


struct Dome: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(
            to: CGPoint(
                x: rect.size.width,
                y: 0
            ),
            control: CGPoint(
                x: rect.size.width/2,
                y: -(rect.size.width * 0.1)
            )
        )
        path.addRect(
            CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height)
        )
        return path
    }
}

                                      
