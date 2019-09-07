//
//  ContentView.swift
//  WWDC19_2
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    @State var schowProfile:Bool = false
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        
        List {
            Image("Los_Angeles").resizable().aspectRatio(contentMode: .fill).frame(height: 200).clipped().listRowInsets(EdgeInsets())
            
            CategoryRowWithEffect(name: "All",items: Array(landmarkData)).frame(height: 350).listRowInsets(EdgeInsets())
            
            ForEach(categories.keys.sorted(), id: \.self) { key in
                CategoryRow(name: key, items: self.categories[key]!).listRowInsets(EdgeInsets())
            }
        }.navigationBarTitle(Text("Featured")).navigationBarItems(trailing: Button(action: {
            self.schowProfile.toggle()
        }){
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .padding(.vertical,30).padding(.leading,30).padding(.trailing,10)
        }).sheet(isPresented: $schowProfile){
            ProfileView()
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
