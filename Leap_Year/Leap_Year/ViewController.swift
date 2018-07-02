//
//  ViewController.swift
//  Leap_Year
//
//  Created by Raksha Singh on 29/06/18.
//  Copyright © 2018 Raksha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtOutlet: UITextField!
    @IBOutlet weak var lblOutlet: UILabel!
    @IBAction func btnAction(_ sender: Any) {
       
        if let value: String  = txtOutlet.text{
            if(value.characters.count != 0){
                var n : Int = 0
                n = Int(value)!
                
                if(n % 4 == 0 && n % 100 != 0 || n % 100 == 00 && n % 400 == 00){
                    
                    self.lblOutlet.text = "Leap Year"
                    
                }

                
                
            
            else{
                self.lblOutlet.text = " Not Leap Year "
                
            }
        }
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

