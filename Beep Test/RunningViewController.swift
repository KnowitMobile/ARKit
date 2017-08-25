//
//  RunningViewController.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit


class RunningViewController: ViewController {
    
    @IBOutlet weak var stageLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var progressView: LevelProgressBar!
    @IBOutlet weak var chartView: BarchartView!
    var stage = 1
    var level = 1
    
    override func viewDidAppear(_ animated: Bool) {
        progressView.delegate = self
        progressView.animate(time: BeepCalculations.lapTime(stage: level))
        
        
        chartView.values = (0..<21).map({ i in
            let v = Double(i - 10)/5
            return exp(-(v*v))
        })
        
    }
    
}

extension RunningViewController: LevelProgressBarDelegate {
    func finished() {
        level += 1
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
