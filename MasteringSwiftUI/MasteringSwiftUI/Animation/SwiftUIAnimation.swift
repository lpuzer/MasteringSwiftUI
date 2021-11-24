//
//  SwiftUIAnimation.swift
//  MasteringSwiftUI
//
//  Created by Luciano Puzer on 23/11/21.
//

import SwiftUI

struct SwiftUIAnimation: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var routerButtonNext: Page = .swiftUIScrowView
    @State private var routerButtonBack: Page = .progressShapeIndicator
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    @State private var circleColorChanged1 = false
    @State private var heartColorChanged1 = false
    @State private var heartSizeChanged1 = false
    @State private var circleColorChanged2 = false
    @State private var heartColorChanged2 = false
    @State private var heartSizeChanged2 = false
    @State private var circleColorChanged3 = false
    @State private var heartColorChanged3 = false
    @State private var heartSizeChanged3 = false

    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(circleColorChanged3 ? .black : .red)
                        .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3), value: 1)
                    Image(systemName: "heart.fill")
                        .foregroundColor(heartColorChanged3 ? .red : .black)
                        .font(.system(size: 100))
                        .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3), value: 1)
                        .scaleEffect(heartSizeChanged3 ? 1.5 : 0.5)
                }
                .onTapGesture {
                    self.circleColorChanged3.toggle()
                    self.heartColorChanged3.toggle()
                    self.heartSizeChanged3.toggle()
                }
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(circleColorChanged ? .black : .red)
                    Image(systemName: "heart.fill")
                        .foregroundColor(heartColorChanged ? .red : .black)
                        .font(.system(size: 100))
                        .scaleEffect(heartSizeChanged ? 1.5 : 0.5)
                }
                .onTapGesture {
                        withAnimation(.default) {
                    self.circleColorChanged.toggle()
                    self.heartColorChanged.toggle()
                    self.heartSizeChanged.toggle()
                    }
                }
                
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(circleColorChanged1 ? .black : .red)
                    Image(systemName: "heart.fill")
                        .foregroundColor(heartColorChanged1 ? .red : .black)
                        .font(.system(size: 100))
                        .scaleEffect(heartSizeChanged1 ? 1.5 : 0.5)
                }
                .onTapGesture {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)) {
                    self.circleColorChanged1.toggle()
                    self.heartColorChanged1.toggle()
                    self.heartSizeChanged1.toggle()
                    }
                }
                
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(circleColorChanged2 ? .black : .red)
                    Image(systemName: "heart.fill")
                        .foregroundColor(heartColorChanged2 ? .red : .black)
                        .font(.system(size: 100))
                        .scaleEffect(heartSizeChanged2 ? 1.5 : 0.5)
                }
                .onTapGesture {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)) {
                    self.circleColorChanged2.toggle()
                    self.heartColorChanged2.toggle()
                    }
                    self.heartSizeChanged2.toggle()
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color("MainBackground")
                    .ignoresSafeArea()
        }
    }
}



struct SwiftUIAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAnimation()
            .environmentObject(ViewRouter())
    }
}
