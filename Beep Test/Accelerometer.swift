//
//  Accelerometer.swift
//  Beep Test
//
//  Created by Fredrik Wennberg on 2017-08-31.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation
import CoreMotion

class Accelerometer {
    let manager = CMMotionManager()
    let backgroundQueue = OperationQueue()
    var bootTime: Date?
    
    let accelerometerFile: FileHandle?
    
    init() {
        manager.accelerometerUpdateInterval = 0
        
        let timeStamp = Date().description(with: nil)
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let accelerometerFilePath = documentsDirectory.appendingPathComponent("accelerometer.txt")
        
        FileManager.default.createFile(atPath: accelerometerFilePath.relativePath, contents: nil, attributes: nil)
        accelerometerFile = try! FileHandle(forWritingTo: accelerometerFilePath)
        
        manager.startAccelerometerUpdates(to: backgroundQueue, withHandler: handleAcceleration)
    }
    
    func handleAcceleration(_ a: CMAccelerometerData?, error: Error?) {
        guard let a = a else { return }
        if bootTime == nil {
            bootTime = Date(timeIntervalSinceNow: -a.timestamp)
        }
        
        let time = bootTime?.addingTimeInterval(a.timestamp)
        
        let string = "\(time!); \(a.acceleration.x); \(a.acceleration.y); \(a.acceleration.z)\n"
        let data = string.data(using: .utf8)!
        accelerometerFile?.write(data)
        print(error)
    }

    
    
    
}

import CoreLocation

class Gps: NSObject {
    let locationManager: CLLocationManager
    var isRunning = false
    override init(){
        locationManager = CLLocationManager()        
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        if CLLocationManager.authorizationStatus() != .authorizedAlways {
            locationManager.startUpdatingLocation()
        } else {
            locationManager.requestAlwaysAuthorization()
        }
        
    }
}

extension Gps: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways {
            locationManager.startUpdatingLocation()
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
}










