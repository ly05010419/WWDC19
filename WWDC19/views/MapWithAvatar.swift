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
            MapView().frame(height: 300)
            Avatar().offset(CGSize(width: 0, height: -130)).padding(.bottom, -130)
            Text("Hello World!")
            Spacer()
        }
    }
}

struct MapWithAvatar_Previews: PreviewProvider {
    static var previews: some View {
        MapWithAvatar()
    }
}
