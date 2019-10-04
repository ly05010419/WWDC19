//
//  LandMarkView.swift
//  WWDC19
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct LandmarkDetailWithStar: View {
    
    @EnvironmentObject var userdata:UserData
    
    var landMark:Landmark
    
    var index: Int {
        userdata.landmarks.firstIndex(where: { $0.id == landMark.id })!
    }
    
    var body: some View {
        VStack(spacing: 20){
            
            MapView(landmark: landMark).frame(height: 300)
            Avatar(imageName: landMark.imageName).offset(CGSize(width: 0, height: -130)).padding(.bottom, -130)
            
            HStack{
                Text(landMark.name)
                Button(action: {
                    self.userdata.landmarks[self.index].isFavorite.toggle()
                }){
                    if(self.userdata.landmarks[self.index].isFavorite){
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                    }else{
                        Image(systemName: "star").foregroundColor(Color.black)
                    }
                }
            }
            CategoryRowWithEffect(name: "All",items: Array(landmarkData)).frame(height: 310).listRowInsets(EdgeInsets())
            Spacer()
        }
    }
}

struct LandMarkView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailWithStar(landMark: landmarkData[0]).environmentObject(UserData())
    }
}

