//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Kirill Taraturin on 18.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    DiceView(number: leftDiceNumber)
                    DiceView(number: rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button("Roll") {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }
                .font(.system(size: 50))
                .frame(width: 120)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(20)
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let number: Int
    
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
