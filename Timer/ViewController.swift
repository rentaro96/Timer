//
//  ViewController.swift
//  Timer
//
//  Created by 鈴木廉太郎 on 2024/11/09.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer!
    
    var countdown: Int = 0
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func select30seconds() {
        
        countdown = 30
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerCalled), userInfo: nil, repeats: true)
        
    }

}
 
