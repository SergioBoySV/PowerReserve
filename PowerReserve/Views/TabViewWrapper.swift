//
//  TabViewWrapper.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/25/24.
//

import SwiftUI


struct TabViewWrapper: View {
    var body: some View {
        TabView {
            NavigationView {
                ProfileView()
            }.tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            
            NavigationView {
                MapView()
            }.tabItem {
                Image(systemName: "map.circle")
                Text("Map")
            }
            
            NavigationView {
                ContactsView()
            }.tabItem {
                Image(systemName: "person.3.sequence")
                Text("Contacts")
            }
            
            NavigationView {
                RidesView()
            }.tabItem {
                Image(systemName: "car")
                Text("Rides")
            }
            
        }.accentColor(.red)
            .navigationBarBackButtonHidden(true)
    }
}





#Preview {
    TabViewWrapper()
}
