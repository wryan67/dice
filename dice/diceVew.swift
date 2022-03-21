//
//  ContentView.swift
//  dice
//
//  Created by wade ryan on 3/20/22.
//

import SwiftUI

struct ContentView: View {
    @State var die1 = Image("dice-\(Int.random(in: 1...6))")
    @State var die2 = Image("dice-\(Int.random(in: 1...6))")
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    HStack {
                        Text("dice master!")
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding()
                        die1
                        die2
                    }
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                }
            }
            .onAppear(perform: initImages)
            Button("Roll") {
                print("rolling dice...")
                loadImage(&die1)
                loadImage(&die2)
            }
            .buttonStyle(.bordered)
            .padding(.all)
        }
    }
    func initImages() {
        loadImage(&die1)
        loadImage(&die2)
    }
    
    func loadImage(_ image: inout Image) {
        image = Image("dice-\(Int.random(in: 1...6))")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewInterfaceOrientation(.portrait)
        }
    }
}
