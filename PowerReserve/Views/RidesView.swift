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
        
        
        List(0 ..< 5) { item in
            HStack {
                VStack(alignment: .leading) {
                    Image(systemName: "photo")
                    Text("Name")
                    Text("Make Model")
                        .font(.subheadline)
                }
                
                Spacer() // Pushes the buttons to the right
                
                Button(action: {
                    // Action for the first button
                    print("Button 1 tapped")
                }) {
                    Text("Button 1")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    // Action for the second button
                    print("Button 2 tapped")
                }) {
                    Text("Button 2")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(8)
                }
            }
        }
        
        
        
//        List(0 ..< 5) { item in
//            VStack(alignment: .leading) {
//                Image(systemName: "photo")
//                Text("Name")
//                Text("Make Model")
//                    .font(.subheadline)
//            }
//        }
        
        

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
    }
}

#Preview {
    RidesView()
}
