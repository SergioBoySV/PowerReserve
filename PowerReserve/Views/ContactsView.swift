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
        Text("Contacts Page")
            .padding()
            .onAppear(){
                Task.init{
                    await fetchAllContacts()
                }
            }
        
    }
    
    
}

#Preview {
    ContactsView()
}
//HERE
