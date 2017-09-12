//
//  BeepCalculations.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation

enum Gender{
  case female
  case male
}
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

  static func resultString(age: Int, isMale: Bool, stage: Int, level: Int) -> String {
    let vo2max = VO2Max(forStage: stage, level: level)
    let rows = isMale ? [
      (0..<26,  [30,36,41,46,51,60]),
      (26..<36, [30,34,39,42,48,56]),
      (36..<46, [26,30,34,38,42,51]),
      (46..<56, [25,28,31,35,38,45]),
      (56..<66, [22,25,29,31,35,41]),
      (66..<246,[20,21,25,28,32,37]),
    ] : [
      (0..<26,  [28, 32, 37, 41, 46, 56]),
      (26..<36, [26, 30, 34, 38, 44, 52]),
      (36..<46, [22, 26, 30, 33, 37, 45]),
      (46..<56, [20, 24, 27, 30, 33, 40]),
      (56..<66, [18, 21, 24, 27, 31, 37]),
      (66..<246,[17, 18, 22, 24, 27 ,32]),
    ]
    let row = rows.first(where: { $0.0.contains(age) })?.1 ?? rows.first!.1
    let strings = ["Very Poor","Poor","Average","Over Average","Good","Very Good", "Exellent"]
    for i in 0..<6 {
      if row[i] > Int(vo2max) {
        return strings[i]
      }
    }
    return strings[6]
  }
    
}
