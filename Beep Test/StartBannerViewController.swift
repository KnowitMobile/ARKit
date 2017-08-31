//
//  StartBannerViewController.swift
//  Beep Test
//
//  Created by Fredrik Wennberg on 2017-08-30.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit
import Foundation

class StartBannerViewController: UIViewController {
    
    @IBOutlet weak var MoreInformationLabel: UILabel!
    @IBOutlet weak var loadingBar: StartBannerCountDownView!
    
    var timer = Timer()
    
    override func viewDidAppear(_ animated: Bool) {
        MoreInformationLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        MoreInformationLabel.numberOfLines = 0
        MoreInformationLabel.text = "We are always looking for new talentet people that chelp us shape the future.\n\r\n\rFind out more here"
 
        loadingBar.onComplete = { [weak self] in
            self?.performSegue(withIdentifier: "showCountDownToStartController", sender: self)
        }
    }

}
