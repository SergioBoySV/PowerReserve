//
//  ProfileView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI


struct UserTest {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
}


struct ProfileView: View {
    let user: UserTest = UserTest(firstName: "John", lastName: "Doe")
    @State private var firstName: String = "John"
    @State private var lastName: String = "Doe"
        
        var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text("First Name:")
                    TextField("Enter first name", text: $firstName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(20)
                
                HStack {
                    Text("Last Name:")
                    TextField("Enter last name", text: $lastName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(20)
                
                Spacer()
                
                Spacer()
            }
            
        }
}

#Preview {
    ProfileView()
}
