//
//  Counter.swift
//  MasteringSwiftUI
//
//  Created by Luciano Puzer on 23/11/21.
//

import SwiftUI

struct Counter: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var counterOne:Int = 0
    @State private var counterTwo:Int = 0
    @State private var counterThree:Int = 0

    var body: some View {
        
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: 300, height: 100)
                .overlay(
            Text("\(addtionOfCounter(counterOne, counterTwo, counterThree))")
                .foregroundColor(Color.black)
                .font(.system(size: 150, weight: .bold, design: .rounded))
        )
            Spacer()
            HStack {
            CounterButton(counter: $counterOne, color: .blue)
            CounterButton(counter: $counterTwo, color: .red)
            CounterButton(counter: $counterThree, color: .green)
            }.padding()
            
            Spacer()
            Button(action: {
                self.counterOne = 0
                self.counterTwo = 0
                self.counterThree = 0
            }) {
                Text("Reset")
                    .font(.title2)
                    .frame(width: 100, height: 40)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .padding()
            }
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    viewRouter.currentPage = .scrowview_example
                }) {
                    Text("Back")
                        .font(.title3)
                        .frame(width: 70, height: 30)
                    
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                Spacer()
                Spacer()
                Button(action: {
                    viewRouter.currentPage = .swiftuistate
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
    
    func addtionOfCounter(_ numOne:Int, _ numTow:Int, _ numThree:Int) -> Int {
        let numAddtion = numOne + numTow + numThree
        return numAddtion
    }
}


struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter()
            .environmentObject(ViewRouter())
    }
}

struct CounterButton: View {
    @Binding var counter: Int
    
    var color: Color
    
    var body: some View {
        VStack {
            Button(action: {
                self.counter += 1
            }) {
                Circle()
                    .fill(color)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Text("\(counter)")
                            .foregroundColor(Color.white)
                            .font(.system(size: 60, weight: .bold, design: .rounded))
                    )
            }
        }
    }
}
