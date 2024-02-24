//
//  UserClass.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import Foundation

class User {
    var name: String
    var number: String
    var password: String
    
    init(name: String, number: String, password: String) {
        self.name = name
        self.number = number
        self.password = password
    }
}
