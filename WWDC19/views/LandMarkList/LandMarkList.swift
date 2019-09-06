//
//  LandMarkList.swift
//  WWDC19
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct LandMarkList: View {
    
    @EnvironmentObject var userdata:UserData
    
    var body: some View {
        
        List{
            
            Toggle(isOn: $userdata.showFavoritesOnly) {
                Text("Favorites only")
            }
            
            ForEach(userdata.landmarks) { landMark in
                if(self.userdata.showFavoritesOnly){
                    if(landMark.isFavorite){
                        NavigationLink(destination: LandMarkView(landMark:landMark).navigationBarTitle(Text("LandMarkView"),displayMode: .inline)){
                            LandmarkRow(landMark: landMark)
                        }
                    }
                }else{
                    NavigationLink(destination: LandMarkView(landMark:landMark).navigationBarTitle(Text("LandMarkView"),displayMode: .inline)){
                        LandmarkRow(landMark: landMark)
                    }
                }
            }
        }.navigationBarTitle(Text("LandMarkList"),displayMode: .inline)
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList().environmentObject(UserData())
    }
}
