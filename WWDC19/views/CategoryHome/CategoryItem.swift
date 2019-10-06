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
    var width:CGFloat = 150
    var height:CGFloat = 150
    
    var body: some View {
        VStack(alignment: .leading){
            Image(landMark.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: width, height: height)
                .cornerRadius(5)
                .shadow(color: .gray, radius: 4, x: 4, y: 4)
            
            Text(landMark.name).lineLimit(1).font(.caption).foregroundColor(Color.black)
        }
    }
}

struct LandMarkItem_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CategoryItem(landMark: landmarkData[0]).previewLayout(.fixed(width: 200, height: 200))
            CategoryItem(landMark: landmarkData[1]).previewLayout(.fixed(width: 200, height: 200))
            CategoryItem(landMark: landmarkData[2]).previewLayout(.fixed(width: 200, height: 200))
        }
        
    }
}
