//
//  AnimatedCircleView.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-10.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

class AnimatedCircleView: UIView {
    
    private var animatedCircleLayer: CAShapeLayer = CAShapeLayer()
    private var staticCircleLayer: CAShapeLayer = CAShapeLayer()
    private var path: UIBezierPath!
    private let pi: CGFloat = CGFloat(Float.pi)
    
    override func didMoveToSuperview() {
        
        let width: CGFloat = bounds.width
        let height: CGFloat = bounds.height
        
        if path == nil{
            path = UIBezierPath(arcCenter: CGPoint(x: width/2, y: height/2), radius: width/2, startAngle: -pi * 0.5, endAngle: 1.5 * pi, clockwise: true)
            animatedCircleLayer.path = path.cgPath
            animatedCircleLayer.strokeColor = colors.circleForeground.cgColor
            animatedCircleLayer.fillColor = UIColor.clear.cgColor
            animatedCircleLayer.lineWidth = 10
            animatedCircleLayer.strokeStart = 0
            animatedCircleLayer.strokeEnd = 0
            
            staticCircleLayer.path = path.cgPath
            staticCircleLayer.strokeColor = colors.circleBackground.cgColor
            staticCircleLayer.fillColor = UIColor.clear.cgColor
            staticCircleLayer.lineWidth = 10
            
            layer.addSublayer(staticCircleLayer)
            layer.addSublayer(animatedCircleLayer)
        }
    }
    
    func animate(){
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 3
        animation.isRemovedOnCompletion = false
        animatedCircleLayer.strokeEnd = 1
        animatedCircleLayer.add(animation, forKey: "path")
        
    }
}


