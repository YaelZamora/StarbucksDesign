//
//  OrderView.swift
//  Starbucks
//
//  Created by iOS Maquina 10 on 07/03/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left").font(Font.custom("", size: 25))
                Spacer()
                Image(systemName: "lock").font(Font.custom("", size: 25))
            }.padding()
            ZStack{
                Image("frappuccino").resizable()
            }.frame(width: 300, height: 300).background(Color(hex: 0xff036635, alpha: 0.1)).cornerRadius(165)
            HStack {
                Text("Frappuccino de Chocolate").bold().font(Font.title3)
                Spacer()
                Text("$4.5").bold().font(Font.title3)
            }.padding()
            Text("Meet the Chocolate Frappuccino, the new way to drink coffee that you going to love it. For only today, this coffee is in $4.5. Go and buy you one.").foregroundColor(.gray).font(Font.caption).padding()
            HStack{
                Image(systemName: "mug").frame(width: 90, height: 130)
                    .background(Color(hex: 0xff036635, alpha: 0.0))
                    .foregroundColor(.gray)
                    .cornerRadius(20)
                    .font(Font.custom("", size: 30))
                Image(systemName: "mug").frame(width: 90, height: 130)
                    .background(Color(hex: 0xff036635, alpha: 0.1))
                    .foregroundColor(Color(hex: 0xff036635, alpha: 1))
                    .cornerRadius(20)
                    .font(Font.custom("", size: 50))
                Image(systemName: "mug").frame(width: 90, height: 130)
                    .background(Color(hex: 0xff036635, alpha: 0.0))
                    .foregroundColor(.gray)
                    .cornerRadius(20)
                    .font(Font.custom("", size: 75))
            }
            Text("Order").frame(width: 300, height: 50)
                .background(Color(hex: 0xff036635, alpha: 1))
                .foregroundColor(.white)
                .cornerRadius(25)
                .padding([.top], 20)
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
