//
//  ContentView.swift
//  WWDC19_2
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        
        List {
            Image("Los_Angeles").resizable().aspectRatio(contentMode: .fill).frame(height: 200).clipped().listRowInsets(EdgeInsets())
            
            ForEach(categories.keys.sorted(), id: \.self) { key in
                CategoryRow(name: key, items: self.categories[key]!).listRowInsets(EdgeInsets())
            }
        }.navigationBarTitle(Text("Featured"))
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["Apple Watch Series 4 - 44mm","iPhone SE", "iPhone XS Max","iPad mini 4","Mac"], id: \.self) { deviceName in
            CategoryHome()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        
        
    }
}
