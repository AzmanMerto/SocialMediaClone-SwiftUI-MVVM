//
//  LocationManager.swift
//  Crewl
//
//  Created by NomoteteS on 3.12.2022.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let manager = CLLocationManager()
    @Published var userLocation: CLLocation?
    static let shared = LocationManager()
    
    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.startUpdatingLocation()
    }
    func requestLocation() {
        manager.requestWhenInUseAuthorization()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            print("--> restricted")
        case .restricted:
            print("--> restricted")
        case .denied:
            print("--> restricted")
        case .authorizedAlways:
            print("--> restricted")
        case .authorizedWhenInUse:
            print("--> restricted")
        case .authorized:
            print("--> restricted")
        @unknown default:
            fatalError()
        }
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocation locations: [CLLocation]) {
            guard let location = locations.last else {return}
            self.userLocation = location
        }
    }
}
