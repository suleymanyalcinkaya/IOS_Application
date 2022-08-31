//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Süleyman Yalçınkaya on 6.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeButtonClicked(_ sender: Any) {
        
        imageView.image=UIImage(named: "adamlar2")

        
    }
}

