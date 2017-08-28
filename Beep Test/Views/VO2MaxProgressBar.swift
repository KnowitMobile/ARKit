//
//  VO2MaxProgressBar.swift
//  Beep Test
//
//  Created by Fredrik Wennberg on 2017-08-28.
//  Copyright © 2017 test. All rights reserved.
//


import UIKit

class VO2MaxProgressBar : UIView {
    
    private var staticCircleLayer: CAShapeLayer = CAShapeLayer()
    private var animatedCircleLayer: CAShapeLayer = CAShapeLayer()
    private var path: UIBezierPath!
    private let pi: CGFloat = CGFloat(Float.pi)
    
    override func didMoveToSuperview() {
        
        backgroundColor = UIColor.clear
       
        let width: CGFloat = bounds.width
        let height: CGFloat = bounds.height
        
        if path == nil{
            path = UIBezierPath(arcCenter: CGPoint(x: width/2, y: height/2), radius: width/2, startAngle: (pi / 180)*150, endAngle: (pi / 180)*30, clockwise: true)
          
            
            animatedCircleLayer.path = path.cgPath
            animatedCircleLayer.strokeColor = KnowitColors.primary.color.cgColor
            animatedCircleLayer.fillColor = UIColor.clear.cgColor
            animatedCircleLayer.lineWidth = 20
            animatedCircleLayer.strokeStart = 0
            animatedCircleLayer.strokeEnd = 0
            
            
            staticCircleLayer.path = path.cgPath
            staticCircleLayer.strokeColor = UIColor.white.cgColor
            staticCircleLayer.fillColor = UIColor.clear.cgColor
            staticCircleLayer.lineWidth = 20
            
            staticCircleLayer.zPosition = -2
            animatedCircleLayer.zPosition = -1
            
            layer.zPosition = -1
            layer.addSublayer(staticCircleLayer)
            layer.addSublayer(animatedCircleLayer)
            
        }
        
        
    }
    
    func update (result: Double) {
        
        animatedCircleLayer.strokeEnd = CGFloat(result)
        
    }
    
    func animate() {
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 0.45
        animation.duration = 3
        animation.isRemovedOnCompletion = false
        animatedCircleLayer.strokeEnd = 0.45
        animatedCircleLayer.add(animation, forKey: "path")
        
    }
    
    
    
}
