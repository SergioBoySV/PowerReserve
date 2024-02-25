//
//  LoginView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding(.top, 100)
                
                Spacer()
                
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
                
                NavigationLink(destination: TabViewWrapper()) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(5.0)
                }
                
                Spacer()
            }
            .padding()
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
//        .background(Color.black)
    }
}


#Preview {
    LoginView()
}
