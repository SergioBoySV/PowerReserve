//
//  ProfileView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI

/* Debugging*/
struct UserTest {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
/* Debugging*/


struct ProfileView: View {
    let user: UserTest = UserTest(firstName: "John", lastName: "Doe") /* Debugging*/
    @State private var firstName: String = "John"/* Debugging*/
    @State private var lastName: String = "Doe"/* Debugging*/
    @State private var mapRadius = 10 // Default selected value
    @State private var isToggled = false // Variable to hold toggle state

    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                Spacer(minLength: 10)
                
                
                Text("Bob Builder\n")
                    .font(.largeTitle)
                    .bold()

                
          /*      // -------------------------- //
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.1))
                    .overlay(
                        HStack {
                            Text("Name: \(user.firstName)")
                                .padding(.horizontal)
                            Spacer()
                        }
                    )
                    .frame(height: 40)
                // -------------------------- //
                */
                // -------------------------- //
             /*   RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.1))
                    .overlay(
                        HStack {
                            Text("Username: \(user.lastName)")
                                .padding(.horizontal)
                            Spacer()
                        }
                    )
                    .frame(height: 40)
                // -------------------------- //
                */
                
                // -------------------------- //
                Text(" Choose radius in miles")
                    .font(.headline)
                Picker(selection: $mapRadius, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    Text("10").tag(10)
                    Text("20").tag(20)
                    Text("30").tag(30)
                } .pickerStyle(SegmentedPickerStyle())
                    
               /* Debugging */
                // -------------------------- //
                
                // -------------------------- //
                Toggle(isOn: $isToggled) {
                    Text("Auto Text")
                        .font(.headline)
                }.padding()
                
            
                  
              //  Text("Emergency Contacts").font(.headline)
                
                
            } /* VSTACK */
            .padding()
            .padding(.top) // Add extra padding at the top
            
            Spacer(minLength: 300)
            
            NavigationLink(destination: LoginOrSignUpView()) {
                Text("Log out")
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(8)
                    .navigationBarBackButtonHidden()
                    .font(.title)
            }

        }
    }
}

#Preview {
    ProfileView()
}
