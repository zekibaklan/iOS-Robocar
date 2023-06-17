//
//  ViewController.swift
//  NewRobocar
//
//  Created by Zeki Baklan on 9.10.2022.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var butonTiklandi: UIButton!
    
    
    var ref:DatabaseReference!
    
    @IBOutlet weak var labeltext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
      
    }
    

    @IBAction func basildi(_ sender: UIButton) {
        
        ref.child("move").setValue(0)
        labeltext.text = "HAZIR !"
    }
    
    @IBAction func butonCekildi(_ sender: UIButton) {
        
        let komut = sender.restorationIdentifier
        

        switch komut {
          
        case "ileriButon":
            ref.child("move").setValue(1)
            labeltext.text = "İLERİ !"
        case "geriButon":
            ref.child("move").setValue(2)
            labeltext.text = "GERİ !"
        case "solButon":
            ref.child("move").setValue(3)
            labeltext.text = "SOLA DÖN !"
        case "sagButon":
            ref.child("move").setValue(4)
            labeltext.text = "SAGA DÖN !"
        case "flashButon":
            ref.child("move").setValue(5)
            labeltext.text = "FARLAR AÇIK !"
        default:break
        }
    }
    
}

