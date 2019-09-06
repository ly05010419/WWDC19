//
//  ContentView.swift
//  WWDC19
//
//  Created by LiYong on 02.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: MapView(latitude: 34.052235, longitude: -118.243683).navigationBarTitle(Text("Los Angeles"),displayMode: .inline)){
                    Text("MapView")
                }
                NavigationLink(destination: Avatar(imageName: "Los_Angeles").navigationBarTitle(Text("Avatar"),displayMode: .inline)){
                    Text("Avatar")
                }
                NavigationLink(destination: MapWithAvatar().navigationBarTitle(Text("MapWithAvatar"),displayMode: .inline)){
                    Text("MapWithAvatar")
                }
                NavigationLink(destination: LandMarkList().navigationBarTitle(Text("LandMarkList"),displayMode: .inline)){
                    Text("LandMarkList")
                }
                
            }.navigationBarTitle(Text("WWDC19"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
