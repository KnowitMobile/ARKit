//
//  ViewController.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-10.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var circleView: AnimatedCircleView!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer: Timer?
    

    @IBAction func didTapStart(_ sender: Any) {
        circleView.animate()
        
        var count = 3
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.timeLabel.text = String(count)
            if count == 0 { timer.invalidate() }
            count -= 1
        }
        
        
    }
    
    
    
}

