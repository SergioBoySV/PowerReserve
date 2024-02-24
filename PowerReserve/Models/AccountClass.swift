//
//  AccountClass.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import Foundation

class Account {
    var favoriteContacts: [String]
    var mileRadius: Int
    
    init(favoriteContacts: [String], mileRadius: Int) {
        self.favoriteContacts = favoriteContacts
        self.mileRadius = mileRadius
    }
}
