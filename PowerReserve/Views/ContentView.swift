//
//  ContentView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
//            LoginPage().tabItem { Image(systemName: "house") }
            ProfileView().tabItem { Image(systemName: "brain.head.profile") }
            MapView().tabItem { Image(systemName: "map.circle")}
            ContactsView().tabItem { Image(systemName: "folder.badge.gear")}
        }
    }
}
    
    
#Preview {
    ContentView()
}
