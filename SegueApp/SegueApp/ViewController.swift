//
//  ViewController.swift
//  SegueApp
//
//  Created by Süleyman Yalçınkaya on 11.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var myLabelFirst: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function called")
    }
    
    override func   viewDidDisappear(_ animated: Bool) {
        print("viewDidDisapper function called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisapper function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillApper function called")
    }
    
    override func   viewDidAppear(_ animated: Bool) {
        print("viewDidApper function called ")
    }
    

    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func   prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let destinationVS = segue.destination as! SecondViewController
            destinationVS.myName = userName
        }
        
        
    }
    
    
}

