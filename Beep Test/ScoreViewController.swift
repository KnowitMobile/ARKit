//
//  ScoreViewController.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-09-06.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit
class ScoreViewController: UIViewController {
  @IBOutlet weak var LabelA: UILabel!
  @IBOutlet weak var labelB: UILabel!
  var textA: String!
  var textB: String!

  override func viewDidLoad() {
    super.viewDidLoad()
      LabelA.text = textA
      labelB.text = textB
  }

}
