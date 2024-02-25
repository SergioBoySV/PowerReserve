//
//  RidesView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI

struct RidesView: View {
    var body: some View {
        VStack(spacing: 20) { // Add spacing between VStack elements
            Text("Emergency Rides Near You")
                .font(.title)
                .padding(.top, 20) // Add padding to separate from safe area
                .padding(.bottom, 10) // Add padding to separate from the list
            
            List(0 ..< 5) { item in
                HStack {
                    VStack(alignment: .leading, spacing: 4) { // Add spacing between VStack elements
                        var fName = chooseRandomEntry(from: firstNames)
                        var car = chooseRandomEntry(from: vehicles)
                        var eta = randomInt(from: 15, to: 50)
                        Text((fName ?? "ERROR"))
                        Text((car ?? "ERROR"))
                        Text("ETA: \(eta)")
                    }
                    .padding(.vertical, 8) // Add vertical padding between VStack elements
                    
                    Spacer() // Pushes the buttons to the right
                    
                    Button(action: {
                        // Action for the first button
                        print("Button 1 tapped")
                    }) {
                        Text("Emergency Ride")
                            .padding(.horizontal, 8) // Adjust horizontal padding
                            .padding(.vertical, 4)    // Adjust vertical padding
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(8)
                    }
                }
            }
        }
        .padding() // Add padding to the VStack
    }
}


        
        
//        ZStack{
//            Color(.black)
//                .ignoresSafeArea()
//            VStack{
//                Text("Rides Page")
//            
//                    .foregroundColor(Color.red)
//                List(items, id: \.self) { item in
//                    Text(item + "\t\t\t\t\t\tCall Message")
//                    Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
//                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                    }
//                }
//                //.navigationBarTitle("List")
//
//            }
//        }


#Preview {
    RidesView()
}
