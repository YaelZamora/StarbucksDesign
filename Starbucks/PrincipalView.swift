//
//  PrincipalView.swift
//  Starbucks
//
//  Created by iOS Maquina 10 on 28/02/23.
//

import SwiftUI

struct PrincipalView: View {
    var body: some View {
        TabView{
            HomeView().tabItem{
                Label("", systemImage: "house")
            }
            LocationView().tabItem{
                Label("", systemImage: "location")
            }
            ProductsView().tabItem{
                Label("", systemImage: "mug")
            }
            PaymentView().tabItem{
                Label("", systemImage: "creditcard")
            }
        }
    }
}

struct PrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalView()
    }
}
