//
//  MapView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true)
            .onAppear {
                let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
                let center = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
                let region = MKCoordinateRegion(center: center, span: span)
                self.region = region
            }
            .ignoresSafeArea()
    }
}

#Preview {
    MapView()
}
