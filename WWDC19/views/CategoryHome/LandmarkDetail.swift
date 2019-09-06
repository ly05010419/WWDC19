//
//  MapWithAvatar.swift
//  WWDC19
//
//  Created by LiYong on 02.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    
    var body: some View {
        VStack(spacing: 20){
            MapView(latitude: landmark.coordinates.latitude, longitude: landmark.coordinates.longitude).frame(height: 300)
            Avatar(imageName: landmark.imageName).offset(CGSize(width: 0, height: -130)).padding(.bottom, -130)
            Text(landmark.name)
            Spacer()
        }.navigationBarTitle(Text(landmark.name),displayMode: .inline)
    }
}

struct MapWithAvatar_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
