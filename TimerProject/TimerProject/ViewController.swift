//
//  ViewController.swift
//  TimerProject
//
//  Created by Süleyman Yalçınkaya on 15.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeFunction), userInfo: nil, repeats: true)
    }
    @objc func timeFunction(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        if counter == 0{
            timer.invalidate()
            timeLabel.text = "Time's Over"
            
        }
            
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }
    
}

