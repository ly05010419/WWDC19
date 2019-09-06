//
//  CircleImage.swift
//  WWDC19
//
//  Created by LiYong on 02.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct Avatar: View {
    
    var imageName:String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            //            .cornerRadius(15)
            //            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
            .navigationBarTitle(Text("Avatar"),displayMode: .inline)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        Avatar(imageName: "chilkoottrail")
    }
}
