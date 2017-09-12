//
//  StartBannerCountDownView.swift
//  Beep Test
//
//  Created by Fredrik Wennberg on 2017-08-31.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

@IBDesignable
class StartBannerCountDownView: UIView
{
    private let staticCircleLayer = CAShapeLayer()
    private let selectedDotLayer =  CAShapeLayer()
    private let path = UIBezierPath()
    private let pi: CGFloat = CGFloat(Float.pi)
    @IBInspectable
    var numberOfDots:Int = 7
    var selectedDot:Int = 0
    
    var onComplete: (() -> ())?
    private var timer = Timer()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .clear
        let w: CGFloat = bounds.width
        let h: CGFloat = bounds.height
        let r: CGFloat = bounds.height / 2
        var x: CGFloat = r
        let step: CGFloat = (w - 2 * r) / CGFloat(numberOfDots - 1)
        
        selectedDotLayer.path = UIBezierPath(arcCenter: CGPoint(x: 0, y: 0), radius: r, startAngle: 0, endAngle: 2*pi, clockwise: true).cgPath
        selectedDotLayer.frame = CGRect(x: r, y: r, width: r*2, height: r*2)
        selectedDotLayer.fillColor = .primary
        
        for _ in 0..<numberOfDots {
            let circle = UIBezierPath(arcCenter: CGPoint(x: x, y: h/2), radius: r, startAngle: 0, endAngle: 2*pi, clockwise: true)
            x += step
            path.append(circle)
        }
        
        staticCircleLayer.path = path.cgPath
        staticCircleLayer.fillColor = UIColor.white.cgColor
    }
    override func didMoveToSuperview() {
        layer.addSublayer(staticCircleLayer)
        layer.addSublayer(selectedDotLayer)
        
        timer.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { [weak self] timer in
            self?.updateTimer()
        }
    }
 
    func updateTimer () {
        selectedDot = (selectedDot + 1) % numberOfDots
        
        
        let w: CGFloat = bounds.width
        
        let r: CGFloat = bounds.height / 2
        let x: CGFloat = r
        let step: CGFloat = (w - 2 * r) / CGFloat(numberOfDots - 1)
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        selectedDotLayer.frame = CGRect(x: x + step * CGFloat(selectedDot), y: r, width: r*2, height: r*2)
        CATransaction.commit()
        if selectedDot == numberOfDots - 1 {
            timer.invalidate()
            onComplete?()
        }
    }
}















