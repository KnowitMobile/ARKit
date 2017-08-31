//
//  BarchartView.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-25.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

@IBDesignable
class BarchartView: UIView {
    
    var values:[Double] = [1,2,4,8,16,8,4,2,1] { didSet { setNeedsLayout() } }
    var margin: CGFloat = 2 { didSet { setNeedsLayout() } }
    var selectedIndex: Int = 6 { didSet { setNeedsLayout() } }
    
    private var maxValue: Double { get { return values.max() ?? 1 } }
    
    private var barLayers = [CALayer]()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        super.layer.zPosition = 10;
        
        if barLayers.count != values.count {
            
            barLayers.forEach({ $0.removeFromSuperlayer() })
            barLayers = values.map({ _ in CAShapeLayer() })
            barLayers.forEach({ layer.addSublayer($0) })
        }
        
        var x: CGFloat = margin / 2
        let barWidth = frame.width / CGFloat(values.count) - margin
        let step = barWidth + margin
        let height = frame.height
        
        for (i, value) in values.enumerated() {
            
            let barHeight = CGFloat(value / maxValue) * height
            let bary = height - barHeight
            
            barLayers[i].zPosition = 10;
            barLayers[i].frame = CGRect(x: x, y: bary, width: barWidth, height: barHeight)
            if i == selectedIndex{
                barLayers[i].backgroundColor = KnowitColors.complimentBlue1.color.cgColor
            }else {
            	barLayers[i].backgroundColor = KnowitColors.complimentBlue3.color.cgColor
            }
            x += step
            
        }
        
        
    }
    
}
