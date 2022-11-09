//
//  LocationManager.swift
//  Utrecht points
//
//  Created by  Mr.Ki on 09.11.2022.
//

import Foundation
import CoreLocation
final class LocationManager: NSObject, ObservableObject {
    //user location
    @Published var location: CLLocation?
 
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
    }
}
extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            guard let location = locations.last else { return }
            DispatchQueue.main.async {
                self.location = location
            }
    }
}
