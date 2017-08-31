//
//  RunningViewController.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit


class RunningViewController: UIViewController {
    
    
    @IBOutlet weak var progressView: LevelProgressBar!
    @IBOutlet weak var chartView: BarchartView!
    @IBOutlet weak var VO2MaxProgressBar: VO2MaxProgressBar!
    
    @IBOutlet weak var stageLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var VO2MaxResultLabel: UILabel!
    
    
    let accelerometer = Accelerometer()
    let gps = Gps()
    
    var stage = 1
    var level = 1
    var seconds = 0
    var minutes = 0
    var distance = 0
    var VO2Result:Float = 0
    
    var timerCounter = Timer()
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        
        timerLabel.text = String(format: "%02i:%02i:%02i", Int(0), Int(minutes), Int(seconds))
        distanceLabel.text = "0 m"
    
        VO2MaxResultLabel.text = String(format:"%0.1f", CalculateVO2Max(stage: 6, level:7))
        VO2MaxResultLabel.textColor = UIColor.white
        
        progressView.delegate = self
        progressView.animate(time: BeepCalculations.lapTime(stage: level))
        
        timerCounter.invalidate()
        timerCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
        
        chartView.values = (0..<21).map({ i in
            let v = Double(i - 10)/5
            return exp(-(v*v))
        })
        
    }
    
    @objc func updateTimer () {
        seconds+=1
        seconds = seconds % 60
        
        
        VO2MaxResultLabel.text = String(format:"%0.1f", CalculateVO2Max(stage: stage, level:level))
        
        VO2MaxProgressBar.update(result: CalculateVO2Max(stage: stage, level:level) * 0.01)
        
        
        
        if (seconds == 0) {
            minutes+=1
         }
        timerLabel.text = String(format: "%02i:%02i:%02i", Int(0), Int(minutes), Int(seconds))
    }
    
    func CalculateVO2Max (stage:Int, level:Int) -> Double
    {
        /*
         https://www.google.se/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjHkJKfg_vVAhXDIVAKHc53AnYQjRwIBw&url=https%3A%2F%2Fwww.slideshare.net%2FJothiHiox%2Fbeep-test-for-vo2-max-calculation&psig=AFQjCNFvgdGNNNfX-bCNN4nxwd8jN4u4fw&ust=1504047375058247
        */
        
        //  "level" = Stage "Shuttle" = level
        
        return 3.46 * (Double(stage) + Double(level) / (Double(stage) * 0.4325 + 7.0048)) + Double(12.2)
        
    }
    
}

extension RunningViewController: LevelProgressBarDelegate {
    func finished() {
        level += 1
        distance+=20
        
        distanceLabel.text = String(distance) + "m"
        
        if level > BeepCalculations.levels(stage: stage) {
            level = 1
            stage += 1
        }
        
        stageLabel.text = "Stage: \(stage)"
        levelLabel.text = "Level: \(level)"
        
        progressView.animate(time: BeepCalculations.lapTime(stage: stage))
        chartView.selectedIndex = level
    }
}
