//
//  ViewController.swift
//  WovelConsonetwithSwitch
//
//  Created by Raksha Singh on 03/07/18.
//  Copyright © 2018 Raksha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtOutlet: UITextField!
    @IBOutlet weak var displayOutlet: UILabel!
    @IBAction func btnAction(_ sender: Any) {
    
    
     
    if let value : String = txtOutlet.text {
       if(value.characters.count != 0){
            var n : Character = "a"
            n = Character (value)
        
            switch (n){
            case "a" :
                self.displayOutlet.text = "vowel"
            case "e" :
                self.displayOutlet.text = "vowel"
            case "i" :
                self.displayOutlet.text = "vowel"
            case "o" :
                self.displayOutlet.text = "vowel"
            case "u" :
                self.displayOutlet.text = "vowel"
            case "A" :
                self.displayOutlet.text = "vowel"
            case "E" :
                self.displayOutlet.text = "vowel"
            case "I" :
                self.displayOutlet.text = "vowel"
            case "O" :
                self.displayOutlet.text = "vowel"
            case "U" :
                self.displayOutlet.text = "vowel"
                

            default:
                self.displayOutlet.text = "consonent"
        }
        }
//       else{
//        self.txtOutlet.text = "First Enter the charecter"
//        
//        }
        
    }
       
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

