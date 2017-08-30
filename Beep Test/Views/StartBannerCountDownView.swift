//
//  StartBannerCountDownView.swift
//  Beep Test
//
//  Created by Fredrik Wennberg on 2017-08-31.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

class StartBannerCountDownView: UIView
{
    private var staticCircleLayer =  CAShapeLayer()
    private var path: UIBezierPath!
    private let pi: CGFloat = CGFloat(Float.pi)
    
    override func didMoveToSuperview() {
    
        backgroundColor = UIColor.clear
        
            
        let width: CGFloat = bounds.width
        let height: CGFloat = bounds.height
        
        if path == nil{
            path = UIBezierPath(arcCenter: CGPoint(x: width/2, y: height/2), radius: 11, startAngle: 0, endAngle: 2*pi, clockwise: true)
         
            staticCircleLayer.path = path.cgPath
            staticCircleLayer.fillColor = UIColor.white.cgColor
            staticCircleLayer.shadowColor = UIColor.black.cgColor
            staticCircleLayer.shadowOffset = CGSize(width: 0, height: 3)
            staticCircleLayer.shadowOpacity = 0.16
            staticCircleLayer.shadowRadius = 6
            
            layer.addSublayer(staticCircleLayer)
            
        }
    }
    
}
