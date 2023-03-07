//
//  ProductsView.swift
//  Starbucks
//
//  Created by iOS Maquina 10 on 28/02/23.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Text("Menu")
                    Spacer()
                    Image(systemName: "magnifyingglass")
                }
                HStack {
                    Text("Drinks:").bold()
                    Spacer()
                }.padding()
                HStack {
                    VStack{
                        ZStack{
                            Image("mocha").resizable()
                        }.frame(width: 130, height: 130)
                            .background(Color(hex: 0xff036635, alpha: 0.1))
                            .cornerRadius(65)
                        Text("Hot Drinks")
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            Image("dragon").resizable()
                        }.frame(width: 130, height: 130)
                            .background(Color(hex: 0xff036635, alpha: 0.1))
                            .cornerRadius(65)
                        Text("Cold Drinks")
                    }
                }.padding()
                HStack {
                    VStack{
                        ZStack{
                            Image("latte").resizable()
                        }.frame(width: 130, height: 130)
                            .background(Color(hex: 0xff036635, alpha: 0.1))
                            .cornerRadius(65)
                        Text("Cold Coffees")
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            Image("frappuccino").resizable()
                        }.frame(width: 130, height: 130)
                            .background(Color(hex: 0xff036635, alpha: 0.1))
                            .cornerRadius(65)
                        Text("Frappuccino")
                    }
                }.padding()
                HStack {
                    Text("Food:").bold()
                    Spacer()
                }.padding()
                HStack {
                    VStack{
                        ZStack{
                            Image("sandwich").resizable()
                        }.frame(width: 130, height: 130)
                            .background(Color(hex: 0xff036635, alpha: 0.1))
                            .cornerRadius(65)
                        Text("Sandwich")
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            Image("bagel").resizable()
                        }.frame(width: 130, height: 130)
                            .background(Color(hex: 0xff036635, alpha: 0.1))
                            .cornerRadius(65)
                        Text("Beagle")
                    }
                }.padding()
                HStack {
                    VStack{
                        ZStack{
                            Image("croissant").resizable()
                        }.frame(width: 130, height: 130)
                            .background(Color(hex: 0xff036635, alpha: 0.1))
                            .cornerRadius(65)
                        Text("Croissant")
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            Image("muffin").resizable()
                        }.frame(width: 130, height: 130)
                            .background(Color(hex: 0xff036635, alpha: 0.1))
                            .cornerRadius(65)
                        Text("Bread")
                    }
                }.padding()
                Spacer()
            }.padding()
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
