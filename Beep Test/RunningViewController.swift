//
//  RunningViewController.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-24.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit
  import AVFoundation

class RunningViewController: UIViewController {
    @IBOutlet weak var progressView: LevelProgressBar!
    @IBOutlet weak var chartView: BarchartView!
    @IBOutlet weak var VO2MaxProgressBar: VO2MaxProgressBar!
    @IBOutlet weak var stageLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var VO2MaxResultLabel: UILabel!
    @IBOutlet weak var resultStringLabel: UILabel!

    let motion = Motion(date: Date())
    var stage = 1
    var level = 1
    var seconds = 0
    var minutes = 0
    var distance = 0
    var VO2Result:Float = 0
    var isVisible = true

  var player:AVAudioPlayer?

    
    var timerCounter = Timer()
    
    
    override func viewDidAppear(_ animated: Bool) {

        timerLabel.text = String(format: "%02i:%02i:%02i", Int(0), Int(minutes), Int(seconds))
        //distanceLabel.text = "0 m"
    
        //VO2MaxResultLabel.text = String(format:"%0.1f", BeepCalculations.VO2Max(forStage: 6, level:7))
        updateUI()
        VO2MaxResultLabel.textColor = UIColor.white
        
        progressView.delegate = self
        progressView.animate(time: BeepCalculations.lapTime(stage: level))
        
        timerCounter.invalidate()
        timerCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
        
        chartView.values = (0..<21).map({ i in
            let v = Double(i - 10)/5
            return exp(-(v*v))
        })
        initSound()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        isVisible = false
    }
    override func viewWillDisappear(_ animated: Bool) {
        isVisible = false
    }
  @IBAction func didTapDone(_ sender: Any) {
    let vc = storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
    vc.textA = "Stage: \(stage)  Level: \(level)"
    vc.textB = "Score: \(BeepCalculations.VO2Max(forStage: stage, level:level))"
    show(vc, sender: self)
  }
  func initSound () -> () {
    let urlString = Bundle.main.path(forResource: "beep_0138", ofType: "wav")
    let url = URL(fileURLWithPath: urlString!)

    player = try? AVAudioPlayer(contentsOf: url)
    player?.prepareToPlay()
  }
    
    @objc func updateTimer () {
        seconds += 1
        seconds = seconds % 60
        
        if (seconds == 0) {
            minutes += 1
     	}
        timerLabel.text = String(format: "%02i:%02i:%02i", Int(0), Int(minutes), Int(seconds))
    }
    
    func updateUI() {
        distanceLabel.text = String(distance) + "m"
        
        if level > BeepCalculations.levels(stage: stage) {
            level = 1
            stage += 1
        }
        
        stageLabel.text = "Stage: \(stage)"
        levelLabel.text = "Level: \(level)"
        resultStringLabel.text = BeepCalculations.resultString(age: 100, isMale: false, stage: stage, level: level)
        chartView.values = (1...21).map({ Double(BeepCalculations.levels(stage: $0)) })
        chartView.selectedIndex = (Double(stage) + (Double(level - 1) / Double(BeepCalculations.levels(stage: stage)))) - 1
        VO2MaxResultLabel.text = String(format:"%0.1f", BeepCalculations.VO2Max(forStage: stage, level:level))
        VO2MaxProgressBar.update(result: BeepCalculations.VO2Max(forStage: stage, level:level) * 0.01)
        
    }
}

extension RunningViewController: LevelProgressBarDelegate {
    func finished() {
        guard isVisible else { return }
        level += 1
        distance += 20
        updateUI()
        progressView.animate(time: BeepCalculations.lapTime(stage: stage))
        player?.play()
    }
}
