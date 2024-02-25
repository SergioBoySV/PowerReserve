//
//  ContactsView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI
import Contacts



struct ContactsView: View {
    var body: some View {
        VStack(spacing: 20) { // Add spacing between VStack elements
            Text("Emergency Contacts")
                .bold()
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
                    }
                    .padding(.vertical, 8) // Add vertical padding between VStack elements
                    
                    Spacer() // Pushes the buttons to the right
                    
                    Button(action: {
                        // Action for the first button
                        print("Button 1 tapped")
                    }) {
                        Text("    Call     ")
                            .font(.subheadline)
                            .fixedSize()
                            .padding(.horizontal, 8) // Adjust horizontal padding
                            .padding(.vertical, 4)    // Adjust vertical padding
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(8)
                            .fixedSize()
                            
                        Text(" Message")
                            .font(.subheadline)
                            .fixedSize()
                            .padding(.horizontal, 8) // Adjust horizontal padding
                            .padding(.vertical, 4)    // Adjust vertical padding
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(8).fixedSize()
                            
                    }
                
                }
            }
        }.padding() //padding to the VStack
    }
    
    
}

#Preview {
    ContactsView()
}
//HERE
