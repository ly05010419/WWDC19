//
//  LandMarkView.swift
//  WWDC19
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct LandMarkView: View {
    var landMark:Landmark
    
    var body: some View {
        VStack(spacing: 20){
            MapView(latitude: landMark.coordinates.latitude, longitude: landMark.coordinates.longitude).frame(height: 300)
            Avatar(imageName: landMark.imageName).offset(CGSize(width: 0, height: -130)).padding(.bottom, -130)
            Text(landMark.name)
            Spacer()
        }
    }
}

struct LandMarkView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkView(landMark: landmarkData[0])
    }
}

