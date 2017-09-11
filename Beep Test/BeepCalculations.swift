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
    
    static func VO2Max (forStage stage:Int, level:Int) -> Double
    {
        /*
         https://www.google.se/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjHkJKfg_vVAhXDIVAKHc53AnYQjRwIBw&url=https%3A%2F%2Fwww.slideshare.net%2FJothiHiox%2Fbeep-test-for-vo2-max-calculation&psig=AFQjCNFvgdGNNNfX-bCNN4nxwd8jN4u4fw&ust=1504047375058247
         */
        
        //  "level" = Stage "Shuttle" = level
        
        return 3.46 * (Double(stage) + Double(level) / (Double(stage) * 0.4325 + 7.0048)) + Double(12.2)
        
    }
    
}
