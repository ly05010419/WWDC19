//
//  UserData.swift
//  WWDC19
//
//  Created by LiYong on 06.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

class UserData:ObservableObject {
    @Published var showFavoritesOnly:Bool = false
    @Published var landmarks = landmarkData
}
