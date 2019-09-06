//
//  Data.swift
//  WWDC19
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct Landmark: Hashable, Codable,Identifiable  {
    
    var id:Int
    var name:String
    var state: String
    var city: String
    var park: String
    var imageName:String
    var coordinates:Coordinates
    var category:Categorys
    var isFavorite:Bool
    var isFeatured:Bool
    
    enum Categorys:String , Codable, Hashable{
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
        
    }
    
}


struct Coordinates:Hashable, Codable {
    var latitude:Double
    var longitude:Double
}
