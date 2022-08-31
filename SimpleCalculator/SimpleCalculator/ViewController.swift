//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Süleyman Yalçınkaya on 8.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let seconNumber = Int(secondText.text!){
                 result = firstNumber + seconNumber
                resultLabel.text = String(result)
            }
        }// ilk ! kesin girdi girecek. boş değil yani değer var. İkinci ! ise girilen değer int çevrilecek
        
       
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let seconNumber = Int(secondText.text!){
                 result = firstNumber - seconNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let seconNumber = Int(secondText.text!){
                 result = firstNumber * seconNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let seconNumber = Int(secondText.text!){
                 result = firstNumber / seconNumber
                resultLabel.text = String(result)
            }
        }
    }
    
}

