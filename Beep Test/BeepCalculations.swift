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
    static func speed(stage: Int) -> Double{
        return (8 + Double(stage) / 2) / 3.6
    }
    
    static func lapTime(stage: Int) -> Double {
        return trackLength / speed(stage: stage)
    }
    
    static func levels(stage:Int) -> Int {
        return [0,7,8,8,9,9,10,10,11,11,11,12,12,13,13,13,14,14,15,15,16,16][stage]
    }
    
    static func distance(stage: Int) -> Double {
        return Double(levels(stage: stage)) * trackLength
    }
    
    
}
