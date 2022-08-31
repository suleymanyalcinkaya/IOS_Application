//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Süleyman Yalçınkaya on 11.08.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = "ddd"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName

     

}
}
