//
//  BeepCalculations.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation

class BeepCalculations {
    static let trackLength: Double = 20
    static func speed(level: Int) -> Double{
        return (8 + Double(level) / 2) / 3.6
    }
    
    static func lapTime(level: Int) -> Double {
        return trackLength / speed(level: level)
    }
    
    static func laps(level:Int) -> Int {
        return [7,8,8,9,9,10,10,11,11,11,12,12,13,13,13,14,14,15,15,16,16][level]
    }
    
    static func distance(level: Int) -> Double {
        return Double(laps(level: level)) * trackLength
    }
    
    
}
