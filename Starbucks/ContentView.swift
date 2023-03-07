//
//  ContentView.swift
//  Starbucks
//
//  Created by iOS Maquina 10 on 28/02/23.
//

import SwiftUI

extension Color{
    init(hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha

        )
    }
}

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("starbucks").resizable()
            }.frame(width: 200, height: 200).cornerRadius(100)
            Spacer()
            Text("Welcome to the Starbucks Canada mobile app!").font(Font.title)
                .multilineTextAlignment(.center)
            Text("Getting and redeeming Rewards hace never been easier. You can now earn and track Stars, and redeem Rewards n your app.").multilineTextAlignment(.center)
                .foregroundColor(.gray)
            Spacer()
            ZStack{
                Text("Next").foregroundColor(.white)
            }.frame(width: 350, height: 50)
                .background(Color(hex: 0xff036635, alpha: 1))
                .cornerRadius(25)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
