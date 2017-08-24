//
//  GradientView.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    @IBInspectable
    var startColor: UIColor = UIColor.white {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable
    var endColor: UIColor = UIColor.black {
        didSet {
            setNeedsLayout()
        }
    }
    
    override open class var layerClass: AnyClass {
        return CAGradientLayer.classForCoder()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let gradientLayer = self.layer as! CAGradientLayer
        gradientLayer.colors = [
            startColor.cgColor, endColor.cgColor]
    }
}
