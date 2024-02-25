//
//  MapView.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import SwiftUI
import CoreLocation
import MapKit

struct MapView: View {
    @StateObject private var viewModel = MapViewModel()
    
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 29.421956, longitude: -98.496659),
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true)
            .onAppear {
                let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
                let center = CLLocationCoordinate2D(latitude: 29.421956, longitude: -98.496659)
                let region = MKCoordinateRegion(center: center, span: span)
                self.region = region
            }
            .ignoresSafeArea()
            .onAppear {
                viewModel.checkLocationServicesEnabled()
            }
    }
}


final class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    var locationManager: CLLocationManager?
    
    func checkLocationServicesEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
//            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        } else {
            print("ALERT")
        }
        
        func checkLocationAuthorization() {
            guard let locationManager = locationManager else { return }
            switch locationManager.authorizationStatus {
                
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case.restricted:
                print("location is restricted")
            case.denied:
                print("You have denied permisssions")
            case.authorizedAlways, .authorizedWhenInUse:
                break
            @unknown default:
                break
                
            }
        }
        func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
            checkLocationAuthorization()
        }
    }
    
}

#Preview {
    MapView()
}
