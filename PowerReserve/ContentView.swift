//
//  ContentView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SwiftUIView2()) {
                    Text("Show secondUI")
                }
            }
        }
    }
    
    
    
    
}

#Preview {
    ContentView()
}

