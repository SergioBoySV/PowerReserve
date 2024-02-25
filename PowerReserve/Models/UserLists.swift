//
//  UserLists.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/25/24.
//

import Foundation


let firstNames = ["Sergio", "Megan", "Ivan", "Emily", "Guster", "Cale", "Heather", "Demarcus", "Caitlyn", "Levi", "Jeramiah", "Precious", "Heidi", "Tyrese", "Gunnar", "Brayan", "Yael", "Finley", "Jaelynn", "Tyree", "Brooks", "Efrain", "Giovanna", "Kiara", "Bryson", "Shayla", "Skylar", "Dexter", "Hadassah", "Kaia", "Luka", "Elyse", "Kareem", "Iris"]

let lastNames = ["Fitzgerald", "Chapman", "Vega", "Ward", "Acosta", "Knight", "Huang", "Carr", "Zuniga", "Robles", "Lin", "Rocha", "Price", "Villegas", "Mcdonald", "Greene", "Velazquez", "Pugh", "Oconnor", "Novak", "Bishop", "Hendricks", "Winters", "Hayes", "Wood", "Mcclain", "Mullen", "Maldonado", "Soto", "Wheeler",]

let vehicles = ["Volkswagen", "Cadillac Escalade", "Audi A1", "Honda Accord", "Dodge Durango"]

func chooseRandomEntry(from array: [String]) -> String?
{
    return array.randomElement()
}

func randomInt(from min: Int, to max: Int) -> Int {
    return Int.random(in: min...max)
}

