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
    
    var player:AVAudioPlayer!
    
    func initSound () -> ()
    {
        /*
        let urlString = Bundle.main.path(forResource: "beep_0138", ofType: "wav")
    
        let url = URL.init(string: urlString!)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url!)
            player.prepareToPlay()
            player.play()
        } catch {
            print("error: file not found")
        }*/ 
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        self.countDownLabel.text = String(self.countDownFrom)
        
        initSound()
        
        //player.play()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            
            self.countDownFrom -= 1
            self.countDownLabel.text = String(self.countDownFrom)
            
            if self.countDownFrom == 0 {
                timer.invalidate()
                
                // Long beep 
                
                
            }
        }
        
        
    
    }
    
}

