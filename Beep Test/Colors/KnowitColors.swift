//
//  KnowitColors.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

extension CGColor {
    static let primary = KnowitColors.primary.cgColor
}

enum KnowitColors {
    case primary
    case secondary
    case complimentBlue
    case complimentBlue1
    case complimentBlue2
    case complimentBlue3
    
    var color: UIColor {
        get {
            switch self {
            case .primary: return #colorLiteral(red: 0, green: 0.3490196078, blue: 0.3098039216, alpha: 1)
            case .secondary: return #colorLiteral(red: 0.3926916122, green: 0.2858114243, blue: 0.4911532998, alpha: 1)
            case .complimentBlue: return #colorLiteral(red: 0.1568627451, green: 0.2, blue: 0.2901960784, alpha: 1)
            case .complimentBlue1: return #colorLiteral(red: 0.3411764706, green: 0.4470588235, blue: 0.5450980392, alpha: 1)
            case .complimentBlue2: return #colorLiteral(red: 0.6196078431, green: 0.7098039216, blue: 0.7960784314, alpha: 1)
            case .complimentBlue3: return #colorLiteral(red: 0.8392156863, green: 0.8823529412, blue: 0.9254901961, alpha: 1)
            }
        }
    }
    
    var cgColor: CGColor {
        get {
            return color.cgColor
        }
    }
}
