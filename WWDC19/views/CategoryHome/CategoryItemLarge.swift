//
//  CategoryItemLarge.swift
//  WWDC19
//
//  Created by LiYong on 07.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct CategoryItemLarge: View {
    var landMark:Landmark
    
    var body: some View {
        VStack(alignment: .leading){
            Image(landMark.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 160, height: 200)
                .cornerRadius(5)
                .shadow(radius: 5)
            Text(landMark.name).lineLimit(1).font(.caption).foregroundColor(Color.black)
        }
    }
}

struct CategoryItemLarge_Previews: PreviewProvider {
    static var previews: some View {
        
        CategoryItemLarge(landMark: landmarkData[0])
        
//        Group{
//            CategoryItemLarge(landMark: landmarkData[0]).previewLayout(.fixed(width: 200, height: 250))
//            CategoryItemLarge(landMark: landmarkData[1]).previewLayout(.fixed(width: 200, height: 250))
//            CategoryItemLarge(landMark: landmarkData[2]).previewLayout(.fixed(width: 200, height: 250))
//        }
    }
}
