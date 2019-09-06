//
//  CategoryRow.swift
//  WWDC19_2
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var name:String
    var items:[Landmark]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(name).font(.title).bold().padding(.leading, 15).padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(self.items){landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            CategoryItem(landMark: landmark).padding(10)
                        }
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(name: landmarkData[0].name, items: Array(landmarkData.prefix(3)))
    }
}
