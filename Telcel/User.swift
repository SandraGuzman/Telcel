//
//  User.swift
//  Telcel
//
//  Created by Sandra Guzmán Bautista on 03/03/16.
//  Copyright © 2016 onikom. All rights reserved.
//

import Foundation
import ObjectMapper

class User: Mappable {
    var username: String?
    var password: String?
    
    init() {}
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        username <- map["username"]
        password <- map["password"]
    }
}