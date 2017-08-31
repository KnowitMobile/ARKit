//
//  ViewController.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-10.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit
import AVFoundation


class CountDownToStartController: UIViewController {

    
    @IBOutlet weak var countDownLabel: UILabel!
    
    var timer: Timer?
    
    var countDownFrom = 10
    
    var player:AVAudioPlayer?
    var gps: Gps!
    func initSound () -> ()
    {
        
        let urlString = Bundle.main.path(forResource: "beep_0138", ofType: "wav")
    
        let url = URL(fileURLWithPath: urlString!)
        

            player = try? AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {

        self.countDownLabel.text = String(self.countDownFrom)
        gps = Gps()
        initSound()
        
        player?.play()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] timer in
            guard let weakself = self else { return }
            weakself.countDownFrom -= 1
            weakself.countDownLabel.text = String(weakself.countDownFrom)
            
            
            if weakself.countDownFrom == 0 {
                timer.invalidate()
                //weakself.longPlayer?.play()
                weakself.performSegue(withIdentifier: "showRunningViewController", sender: "")
            } else {
                weakself.player?.play()
            }
        }
        
        
    
    }
    
}

