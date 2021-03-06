//
//  CardView.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

@IBDesignable
class CardView: UIView {
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        layer.cornerRadius = 2
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowOpacity = 0.16
        layer.shadowRadius = 6
    }
    
    
}
