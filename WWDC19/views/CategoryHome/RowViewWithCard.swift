//
//  CategoryRowWithEffect.swift
//  WWDC19
//
//  Created by LiYong on 07.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct RowViewWithCard: View {
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
                                CardItem(landMark: landmark,width: 160,height: 200).rotation3DEffect(Angle(degrees: Double((geometry.frame(in: .global).minX-20) / -10)), axis: (x: 0, y: 10, z: 0))
                            }
                        }.frame(width: 160, height: 270)
                    }
                }
                .padding(.leading,15).padding(.trailing,240)
            }
        }
    }
}

struct CategoryRowWithEffect_Previews: PreviewProvider {
    
    static var categories: [String: [Landmark]] {
       Dictionary(grouping: landmarkData,by: { $0.category.rawValue })
    }
    
    static var previews: some View {
        
        RowViewWithCard(name:"Lakes",items:categories["Lakes"]!)
        
//        ForEach(categories.keys.sorted(), id: \.self) { key in
//            CategoryRowWithEffect(name:key,items:categories[key]!)
//                .previewLayout(.fixed(width: UIScreen.main.bounds.size.width, height: 350))
//        }
        
    }
}
