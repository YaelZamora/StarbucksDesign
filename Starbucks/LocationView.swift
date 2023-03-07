//
//  LocationView.swift
//  Starbucks
//
//  Created by iOS Maquina 10 on 28/02/23.
//

import SwiftUI
import MapKit

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct LocationView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.85341, longitude: 2.3488), span: MKCoordinateSpan(latitudeDelta: 0.010, longitudeDelta: 0.010))
    
    let annotations = [
        City(name: "Parte 1", coordinate: CLLocationCoordinate2D(latitude: 48.85341, longitude: 2.3488)),
        City(name: "Parte 2", coordinate: CLLocationCoordinate2D(latitude: 48.85221, longitude: 2.3438))
    ]
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, interactionModes: [.zoom], annotationItems: annotations){
                MapMarker(coordinate: $0.coordinate)
            }.ignoresSafeArea()
            HStack{
                Image(systemName: "magnifyingglass").frame(width: 50, height: 50)
                    .background()
                    .cornerRadius(25)
                Spacer()
                Text("Find a Store").padding().frame(width: 200)
                    .background()
                    .cornerRadius(25)
                Spacer()
                Image(systemName: "bookmark").frame(width: 50, height: 50)
                    .background()
                    .cornerRadius(25)
            }.padding().position(x: 196, y: 30)
            VStack(alignment: .leading){
                Image("starbucks_france").resizable()
                    .frame(width: 330, height: 150)
                    .cornerRadius(20)
                    .padding()
                Text("The Poiz Centre").bold()
                    .padding([.horizontal], 20)
                Text("Prep Time: 3 - 7 mins").font(Font.footnote)
                    .foregroundColor(.gray)
                    .padding([.horizontal], 20)
                Text("Starbucks Coffee The Poiz Centre 51 Upper Serangoon Road #01-02, The Poiz Centre, Singapore 347697").foregroundColor(.gray)
                    .font(Font.caption)
                    .padding()
                Text("Select Store").frame(width: 280, height: 50)
                    .background(Color(hex: 0xff036635, alpha: 1))
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .position(x: 180, y: 50)
            }.frame(width: 350, height: 400)
                .background()
                .cornerRadius(20)
                .position(x:195, y: 640)
                .ignoresSafeArea()
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
