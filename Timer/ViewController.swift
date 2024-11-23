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
    
    @objc func onTimercalled() {
        
        updateLabal()
        
        countdown -= 1
        
        
        
        if countdown < 0 {
            
            showAlert()
            
            
        
            
            timer.invalidate()
        }
        
        
    }
    
    func updateLabal() {
        let remainingMinutes: Int = countdown / 60
        let remainingSeconds: Int = countdown % 60
        
        
        label.text = String(format: "%02d: %02d" ,remainingMinutes, remainingSeconds)
        
    }
    func showAlert() {
        let stopAlert = UIAlertController(title: "タイマーが終了しました",message:nil,preferredStyle: .alert )
        let okAction = UIAlertAction(title: "OK" , style: .default)
        
        stopAlert .addAction(okAction)
        
        present(stopAlert, animated: true)
        
        
    }
    
    func startTimer(time: Int){
        countdown = time
        
        if timer != nil {
            timer.invalidate()
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:   #selector(onTimercalled), userInfo: nil, repeats: true)
        
        
        
        timer.fire() //タイマーを開始
        
    }

    @IBAction func select30seconds() {
        
        startTimer(time: 30)
    }
    
    @IBAction func select1minutes() {
        startTimer(time: 60)
        }
    
    @IBAction func select5minutes(){
        startTimer(time: 300)
    }
    
    @IBAction func select10minutes(){
        startTimer(time: 600)
    }
    

}
 
