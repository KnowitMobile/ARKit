//
//  Colors.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-10.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

var colors = Colors()
class Colors {
    var primary: MaterialColors = .teal
    
    var tint: UIColor { get { return getColor(primary, .p800)}}
    var circleForeground: UIColor { get { return getColor(primary, .a200) }}
    var circleBackground: UIColor { get { return getColor(primary, .p200) }}
}
