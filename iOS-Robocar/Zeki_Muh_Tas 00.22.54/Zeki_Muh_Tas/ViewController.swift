//
//  ViewController.swift
//  NewRobocar
//
//  Created by Zeki Baklan on 9.10.2022.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    var ref:DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
      
    }
    func buttontiklandi()
    {
        print("Button tiklandi")
    }
  
    
   
    var move = 0

  
    @IBAction func flash(_ sender: Any) {
        move = 0
        print(move)
        ref.child("move").setValue(0)
        
    }
    
    
    @IBAction func flash0(_ sender: Any) {
        move = 5
        print(move)
        ref.child("move").setValue(5)
    }
    @IBAction func ileri(_ sender: Any) {move = 1
        print(move)
        ref.child("move").setValue(1)
    }
    @IBAction func ileri0(_ sender: Any) {
        move = 0
        print(move)
        ref.child("move").setValue(0)
    }
    
    
    @IBAction func geri(_ sender: Any) {
        move = 2
        print(move)
        ref.child("move").setValue(2)
    }
    @IBAction func geri0(_ sender: Any) {
        move = 0
            print(move)
        ref.child("move").setValue(0)
    }
    
    @IBAction func sol(_ sender: Any) {
        move = 3
        print(move)
        ref.child("move").setValue(3)
    }
    @IBAction func sol0(_ sender: Any) {
        move = 0
        print(move)
        ref.child("move").setValue(0)
    }
    
    
    @IBAction func sag(_ sender: Any) {
        move = 4
        print(move)
        ref.child("move").setValue(4)
    }
    
    
    @IBAction func sag0(_ sender: Any) {
        move = 0
        print(sag)
        ref.child("move").setValue(0)
    }
    
}

