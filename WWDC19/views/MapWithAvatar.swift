//
//  MapWithAvatar.swift
//  WWDC19
//
//  Created by LiYong on 02.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct MapWithAvatar: View {
    var body: some View {
        VStack(spacing: 20){
            MapView(latitude: 34.052235, longitude: -118.243683).frame(height: 300)
            Avatar(imageName: "Los_Angeles").offset(CGSize(width: 0, height: -130)).padding(.bottom, -130)
            Text("Los Angeles")
            Spacer()
        }
    }
}

struct MapWithAvatar_Previews: PreviewProvider {
    static var previews: some View {
        MapWithAvatar()
    }
}
