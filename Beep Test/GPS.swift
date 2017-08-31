//
//  GPS.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-31.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation
import CoreLocation

class Gps: NSObject {
    let locationManager: CLLocationManager
    var isRunning = false
    override init(){
        locationManager = CLLocationManager()
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        if CLLocationManager.authorizationStatus() == .authorizedAlways {
            locationManager.startUpdatingLocation()
            locationManager.allowsBackgroundLocationUpdates = true
        } else {
            locationManager.requestAlwaysAuthorization()
        }
        
    }
}

extension Gps: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways {
            locationManager.startUpdatingLocation()
            locationManager.allowsBackgroundLocationUpdates = true
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
}










