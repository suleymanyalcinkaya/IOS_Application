//
//  ViewController.swift
//  sayiDusmeOyunu
//
//  Created by Süleyman Yalçınkaya on 9.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textField: UITextField!
    var sayi = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonGir(_ sender: Any) {
        
            
            labelSonuc.text = "Oyuncu cevabı"
            sayi = Int(textField.text!) ?? 0
        
        
    }
    
    @IBAction func buttonBirDus(_ sender: Any) {
        textField.text = nil
        sayi = sayi - 1
        textField.text = String(sayi)
        bilgisayar(x: 2)
        result()
    }
    @IBAction func buttonIkiDus(_ sender: Any) {
    
        textField.text = nil
        sayi = sayi - 2
        textField.text = String(sayi)
        bilgisayar(x: 1)
        result()
        
       
        }
    func bilgisayar(x:  Int){
        labelSonuc.text = "bilgisayar cevabı"
        sayi = sayi - x
        textField.text = String(sayi)
        
    }
    func result(){
        if sayi<=0{
            return labelSonuc.text = labelSonuc.text! + " Kaybetti."
        }
        labelSonuc.text = "oyuncu sirası"
    
    }
    
}

