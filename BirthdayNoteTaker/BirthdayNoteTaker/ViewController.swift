//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Süleyman Yalçınkaya on 8.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewText: UITextField!
    @IBOutlet weak var viewtext2: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String{//storedNameyi string olarak kaydedebilirsen eğer myName diye bir değişken oluştur yani opsiyonel değil neden çunkü bunu yapabilirse opsiyonel olmayacak. Artık normal string olacak.
            nameLabel.text = newName
        }
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = newBirthday
        }
        
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        
        UserDefaults.standard.set(viewText.text, forKey: "name")
        UserDefaults.standard.set(viewtext2.text, forKey: "birthday")
       
        nameLabel.text = "Name: \(viewText.text!)"
        birthdayLabel.text = "Birthday: \(viewtext2.text!)"
    }
    

    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storeBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String{
            UserDefaults.standard.removeObject(forKey: "name")
            
        }
        if let storeBirthday = storeBirthday as? String{
            UserDefaults.standard.removeObject(forKey: "birthday")
        }
    }
}

