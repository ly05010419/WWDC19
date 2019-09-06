//
//  LandMarkItem.swift
//  WWDC19_2
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct CategoryItem: View {
    var landMark:Landmark
    
    var body: some View {
        VStack(alignment: .leading){
            Image(landMark.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(5)
                .shadow(radius: 5)
            Text(landMark.name).lineLimit(1).font(.caption).foregroundColor(Color.black)
        }
    }
}

struct LandMarkItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landMark: landmarkData[0])
    }
}
