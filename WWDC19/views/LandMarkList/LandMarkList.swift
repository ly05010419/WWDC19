//
//  LandMarkList.swift
//  WWDC19
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        
        List(landmarkData){ landMark in
            NavigationLink(destination: LandMarkView(landMark:landMark).navigationBarTitle(Text("LandMarkView"),displayMode: .inline)){
                LandmarkRow(landMark: landMark)
            }
            
        }
        
        
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
