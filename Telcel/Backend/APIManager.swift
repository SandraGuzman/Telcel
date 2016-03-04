//
//  WebService.swift
//  Telcel
//
//  Created by Sandra Guzmán Bautista on 03/03/16.
//  Copyright © 2016 onikom. All rights reserved.
//

import Foundation
import Alamofire

public class APIManager {
    
    public class var sharedInstance: APIManager {
        struct Singleton {
            static let instance : APIManager = APIManager()
        }
        return Singleton.instance
    }
    
    let manager = Manager()
    
    init() {
    }
    
    //MARK: Requests Methods
    
    func loginUser(completion: (user: [User]) -> ()) -> Request {
        let parameters = [
            "foo": "bar",
            "baz": ["a", 1],
            "qux": [
                "x": 1,
                "y": 2,
                "z": 3
            ]
        ]

        return manager.request(.POST, "http://httpbin.org/post", parameters: parameters, encoding: .JSON(options: nil))
            .responseJSON {(request, response, JSON, error) in
                println(JSON)
        }
    }
}