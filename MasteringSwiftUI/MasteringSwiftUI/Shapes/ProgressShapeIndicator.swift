//
//  ProgressShapeIndicator.swift
//  MasteringSwiftUI
//
//  Created by Luciano Puzer on 23/11/21.
//

import SwiftUI

struct ProgressShapeIndicator: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var routerButtonNext: Page = .swiftUIAnimation
    @State private var routerButtonBack: Page = .swiftUIShape
    
    private var purpleGradient = LinearGradient(
        gradient: Gradient(
            colors:
                [ Color(red: 207/255, green: 150/255, blue: 207/255),
                  Color(red: 107/255, green: 116/255, blue: 179/255) ]
        ),
        startPoint: .trailing, endPoint: .leading
    )
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                ZStack {
                    Circle()
                        .stroke(Color("buttonColor"), lineWidth: 40)
                        .frame(width: 200, height: 200)
                    Circle()
                        .trim(from: 0, to: 0.85)
                        .stroke(purpleGradient, lineWidth: 40)
                        .frame(width: 200, height: 200)
                        .overlay(
                            VStack {
                                Text("85%")
                                    .font(.system(size: 50, weight: .bold, design: .rounded))
                                    .foregroundColor(Color.black)
                                Text("Complete")
                                    .font(.system(.body, design: .rounded))
                                    .bold()
                                    .foregroundColor(Color.black)
                            }
                        )
                }
                Spacer()
                ZStack {
                    Circle()
                        .trim(from: 0, to: 0.4)
                        .stroke(Color(.systemBlue), lineWidth: 40)
                    Circle()
                        .trim(from: 0.4, to: 0.6)
                        .stroke(Color(.systemTeal), lineWidth: 40)
                    Circle()
                        .trim(from: 0.6, to: 0.75)
                        .stroke(Color(.systemPurple), lineWidth: 40)
                    Circle()
                        .trim(from: 0.75, to: 1)
                        .stroke(Color(.systemYellow), lineWidth: 50)
                        .overlay(
                            Text("25%")
                                .font(.system(.title3, design: .rounded))
                                .bold()
                                .foregroundColor(.black)
                                .offset(x: 60, y: -80)
                        )
                }
                .frame(width: 200, height: 200)
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


struct ProgressShapeIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ProgressShapeIndicator()
    }
}
