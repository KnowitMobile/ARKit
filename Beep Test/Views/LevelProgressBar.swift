//
//  LevelProgressBar.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

protocol LevelProgressBarDelegate: class {
    func finished()
}

@IBDesignable
class LevelProgressBar: UIView {
    
    var dotLayer = CALayer()
    var gradientLayer = CAGradientLayer()
    var lineFraction: CGFloat = 3.5
    weak var delegate: LevelProgressBarDelegate!
    
    override func didMoveToSuperview() {

        
        dotLayer.backgroundColor = KnowitColors.primary.color.cgColor
        
        layer.addSublayer(gradientLayer)
     	layer.addSublayer(dotLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let f = frame
        gradientLayer.frame = CGRect(x: 0, y: (f.height - f.height / lineFraction) / 2, width: f.width, height: f.height / lineFraction)
        gradientLayer.colors = [
            UIColor.white.cgColor, KnowitColors.primary.color.cgColor, UIColor.white.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        let b = bounds
        dotLayer.frame = CGRect(x: f.height / 2 , y: b.midY - f.height / 2, width: f.height, height: f.height)
		dotLayer.cornerRadius = f.height / 2
    }
	
    func animate(time: Double){
        let f = frame
        let b = bounds
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = dotLayer.position
        
        let endPoint = (dotLayer.position.x < f.width / 2) ?
            CGPoint(x: f.width - f.height / 2, y: dotLayer.position.y)
            :
            CGPoint(x: f.height / 2 , y: dotLayer.position.y)
        
        print(endPoint)
        
        animation.toValue = endPoint
        animation.duration = time
        animation.delegate = self
        animation.isRemovedOnCompletion = true
        dotLayer.position = endPoint
        dotLayer.add(animation, forKey: "frame")
    }
}

extension LevelProgressBar: CAAnimationDelegate {
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        delegate.finished()
    }
}
