//
//  CategoryRowWithEffect.swift
//  WWDC19
//
//  Created by LiYong on 07.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct CategoryRowWithEffect: View {
    var name:String
    var items:[Landmark]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(name).font(.title).bold().padding(.leading, 15).padding(.top, 10)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(self.items){landmark in
                        GeometryReader{ geometry in
                            NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                                CategoryItemLarge(landMark: landmark).rotation3DEffect(Angle(degrees: Double((geometry.frame(in: .global).minX-20) / -10)), axis: (x: 0, y: 10, z: 0))
                            }
                        }.frame(width: 160, height: 270)
                    }
                }.padding(.leading,20).padding(.trailing,230)
            }
        }
    }
}

struct CategoryRowWithEffect_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowWithEffect(name: landmarkData[0].name, items: Array(landmarkData.prefix(3))).previewLayout(.fixed(width: 440, height: 250))
    }
}
