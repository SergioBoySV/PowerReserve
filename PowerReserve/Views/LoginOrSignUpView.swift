//
//  LoginOrSignUpView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/25/24.
//

import SwiftUI

struct LoginOrSignUpView: View {
    var body: some View {
        
        NavigationView {
            GeometryReader { geometry in
                        VStack {
                            Spacer() // Push buttons to the center
                            
                            // -------------------------- //
                            NavigationLink(destination: SignUpView()) {
                                Text("Sign Up")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.green)
                                    .cornerRadius(8)
                            }
                            // -------------------------- //
                            
                            // -------------------------- //
                            NavigationLink(destination: LoginView()) {
                                Text("Login")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.green)
                                    .cornerRadius(8)
                            }
                            // -------------------------- //
                            
                            Spacer() // Push buttons to the center
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height) // Take up entire available space
            }.background(Color.black)
            
            
            
        }
    }
}

#Preview {
    LoginOrSignUpView()
}
