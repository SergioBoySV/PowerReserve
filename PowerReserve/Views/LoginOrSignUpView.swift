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
            VStack(spacing: 20) {
                Text("Welcome").font(.title).bold()
                Spacer() // Add spacer to push the image and buttons towards the top
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding(.bottom, -100) // Adjust padding to move the image up further
                Spacer() // Add spacer to push the buttons towards the top
                NavigationLink(destination: SignUpView()) {
                    Text("Sign Up")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(8)
                    
                }
                .padding(.top, 120) // Adjust padding to move the buttons up further

                NavigationLink(destination: LoginView()) {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(8)
                }
                .padding(.bottom, 200) // Adjust padding to move the buttons up further
            }
            .padding()
            .navigationBarTitle("", displayMode: .inline) // Hide default title
            .navigationBarItems(leading: Spacer(), trailing: Spacer()) // Add spacers to center the title
            .navigationBarTitle("Welcome") // Set the centered title
        }




    }
}

#Preview {
    LoginOrSignUpView()
}
