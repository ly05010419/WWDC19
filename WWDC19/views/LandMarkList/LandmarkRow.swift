//
//  LandmarkRow.swift
//  WWDC19
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landMark:Landmark
    
    var body: some View {
        HStack{
            Image(landMark.imageName).resizable().frame(width: 50, height: 50)
            Text(landMark.name)
            if(landMark.isFavorite){
                Image(systemName: "star.fill").foregroundColor(Color.yellow)
            }
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landMark: landmarkData[0]).environmentObject(UserData())
    }
}
