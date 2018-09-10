//
//  FinalScoreViewController.swift
//  Quiz
//
//  Created by user144547 on 9/9/18.
//  Copyright © 2018 Jose Adrian. All rights reserved.
//

import UIKit

class FinalScoreViewController: UIViewController {

    @IBOutlet weak var finalScoreLabel: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.finalScoreLabel.text = "\(score)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
