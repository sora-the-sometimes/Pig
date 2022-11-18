//
//  ContentView.swift
//  Pig
//
//  Created by Sora on 11/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var turnScore = 0
    @State private var gameScore = 0
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        ZStack {
            Color.gray.opacity(0.7).ignoresSafeArea()
            VStack {
                Image("skave-neutral").resizable().frame(width: 150, height: 150)
                CustomText(text: "Skave'd")
                    Image("pips \(randomValue)")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .rotationEffect(.degrees(rotation))
                    .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                    .padding(50)
                CustomText(text: "Turn Score: \(turnScore)")
                CustomText(text: "Game Score: \(gameScore)")
                Spacer()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomText: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size: 36))
    }
}
