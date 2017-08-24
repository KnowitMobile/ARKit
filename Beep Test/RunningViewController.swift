//
//  RunningViewController.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit


class RunningViewController: UIViewController {
    
    @IBOutlet weak var stageLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var progressView: LevelProgressBar!
    var stage = 1
    var level = 1
    
    override func viewDidAppear(_ animated: Bool) {
        progressView.delegate = self
        progressView.animate(time: BeepCalculations.lapTime(level: level))
    }
    
}

extension RunningViewController: LevelProgressBarDelegate {
    func finished() {
        level += 1
        if level > BeepCalculations.laps(level: stage) {
            level = 1
            stage += 1
        }
        stageLabel.text = "Stage: \(stage)"
        levelLabel.text = "Level: \(level)"
        progressView.animate(time: BeepCalculations.lapTime(level: stage))
    }
}
