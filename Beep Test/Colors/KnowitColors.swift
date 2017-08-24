//
//  KnowitColors.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit


enum KnowitColors {
    case primary
    case secondary
    
    var color: UIColor {
        get {
            switch self {
            case .primary: return #colorLiteral(red: 0, green: 0.3490196078, blue: 0.3098039216, alpha: 1)
            case .secondary: return #colorLiteral(red: 0.3926916122, green: 0.2858114243, blue: 0.4911532998, alpha: 1)
            }
        }
    }
}
