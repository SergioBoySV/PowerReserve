//
//  SignUp.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var passwordsMatch: Bool = true
    
    var body: some View {
//        NavigationView {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width * 0.5)
                        .padding(.bottom, 20)
                    
                    //                Spacer()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    
                    SecureField("Confirm Password", text: $confirmPassword)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    
                    if !passwordsMatch {
                                        Text("Passwords do not match")
                                            .foregroundColor(.red)
                                            .padding(.bottom, 20)
                                    }
                    
                    NavigationLink(destination: TabViewWrapper()) { /* ??? Doesnt work in preview but it builds and works fine */
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(5.0)
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                                        self.passwordsMatch = self.password == self.confirmPassword
                                    })
                    Spacer()
                }
                .padding()
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
            .background(Color.black)
//        }
    }
    
//    let newUser = User()
}


#Preview {
    SignUpView()
}
