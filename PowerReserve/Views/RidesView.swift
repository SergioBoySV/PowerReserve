//
//  RidesView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI

struct RidesView: View {
    var body: some View {

        let items = ["Item 1", "Item 2", "Item 3"]

        ZStack{

            Color(.black)
                .ignoresSafeArea()

            VStack{

                Text("Rides Page")
                    .foregroundColor(Color.red)
                List(items, id: \.self) { item in
                    Text(item + "\t\t\t\t\t\tCall Message")
                }
                //.navigationBarTitle("List")

            }
        }
    }
}

#Preview {
    RidesView()
}
