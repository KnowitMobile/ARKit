//
//  Accelerometer.swift
//  Beep Test
//
//  Created by Fredrik Wennberg on 2017-08-31.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation
import CoreMotion

/*
 Need to add
 manager.startGyroUpdates()
 manager.startDeviceMotionUpdates()
 
 Also log
 timestamp; stage; level
 */
let motionManager = CMMotionManager()

class MotionCapture {
    var name: String { get { return "Motion" } }
    var date: Date
    lazy var backgroundQueue: OperationQueue = { OperationQueue() }()
    lazy var file: FileHandle = { createFileForWriting(date: date, name: name) }()
    var bootDate: Date?
    
    required init(date: Date) {
        self.date = date
    }
    
    func createFileForWriting(date: Date, name: String) -> FileHandle {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let filePath = documentsDirectory.appendingPathComponent("\(date.description(with: nil))\(name)")
        
        FileManager.default.createFile(atPath: filePath.relativePath, contents: nil, attributes: nil)
        return try! FileHandle(forWritingTo: filePath)
    }
    
    func getTime(timestamp: TimeInterval) -> TimeInterval {
        if bootDate == nil {
            bootDate = Date(timeIntervalSinceNow: -timestamp)
        }
        return bootDate!.addingTimeInterval(timestamp).timeIntervalSince1970
    }
    
    func writeStuff(stuff: String) {
       
        let data = stuff.data(using: .utf8)!
        file.write(data)
    }
}

class Accelerometer: MotionCapture {
    override var name: String { get { return "Accelerometer" } }
    
    required init(date: Date) {
        super.init(date: date)
        motionManager.startAccelerometerUpdates(to: backgroundQueue, withHandler: handleAcceleration)
    }
    func handleAcceleration(_ a: CMAccelerometerData?, error: Error?) {
        guard let a = a else { return }
        let time = getTime(timestamp: a.timestamp)
        writeStuff(stuff: "\(time); \(a.acceleration.x); \(a.acceleration.y); \(a.acceleration.z)\n")
    }
}

class Gyroscope: MotionCapture {
    override var name: String { get { return "Gyroscope" } }
    
    required init(date: Date) {
        super.init(date: date)
        motionManager.startGyroUpdates(to: backgroundQueue, withHandler: handleGyroUpdates)
    }
    func handleGyroUpdates(_ a: CMGyroData?, error: Error?) {
        guard let a = a else { return }
        let time = getTime(timestamp: a.timestamp)
        writeStuff(stuff: "\(time); \(a.rotationRate.x); \(a.rotationRate.y); \(a.rotationRate.z)\n")
    }
}

class Magnetometer: MotionCapture {
    override var name: String { get { return "Compass" } }
    
    required init(date: Date) {
        super.init(date: date)
        motionManager.startMagnetometerUpdates(to: backgroundQueue, withHandler: handleMagnetometerUpdates)
    }
    func handleMagnetometerUpdates(_ a: CMMagnetometerData?, error: Error?) {
        guard let a = a else { return }
        let time = getTime(timestamp: a.timestamp)
        writeStuff(stuff: "\(time); \(a.magneticField.x); \(a.magneticField.y); \(a.magneticField.z)\n")
    }
}

class Motion: MotionCapture {
    override var name: String { get { return "Motion" } }
    
    required init(date: Date) {
        super.init(date: date)
        motionManager.startDeviceMotionUpdates(to: backgroundQueue, withHandler: handleMagnetometerUpdates)
    }
    func handleMagnetometerUpdates(_ a: CMDeviceMotion?, error: Error?) {
        guard let a = a else { return }
        let time = getTime(timestamp: a.timestamp)
        let parameters = [
            "\(time)",
        	"\(a.attitude.yaw)", "\(a.attitude.pitch)", "\(a.attitude.roll)",
            "\(a.gravity.x)","\(a.gravity.y)","\(a.gravity.z)",
            "\(a.magneticField.field.x)","\(a.magneticField.field.y)","\(a.magneticField.field.z)",
            "\(a.rotationRate.x)","\(a.rotationRate.y)","\(a.rotationRate.z)",
            "\(a.userAcceleration.x)","\(a.userAcceleration.y)","\(a.userAcceleration.z)",
            "\(a.heading)"]
        writeStuff(stuff: parameters.joined(separator: "; ") + "\n")
    }
}





