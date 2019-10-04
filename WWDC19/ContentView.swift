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
                NavigationLink(destination: CategoryHome()){
                    Text("Home")
                }
                NavigationLink(destination: LandmarkDetail(landmark: landmarkData[0])){
                    Text("MapWithAvatar")
                }
                NavigationLink(destination: Avatar(imageName: "Los_Angeles")){
                    Text("Avatar")
                }
                NavigationLink(destination: MapView(landmark: landmarkData[0]).navigationBarTitle(Text("Los Angeles"),displayMode: .inline)){
                    Text("MapView")
                }

//                NavigationLink(destination: LandMarkList().environmentObject(UserData())){
//                    Text("LandMarkList")
//                }

            }.navigationBarTitle(Text("WWDC19"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
}
