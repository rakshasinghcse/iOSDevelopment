//
//  ViewController.swift
//  Fibonacci
//
//  Created by Raksha Singh on 29/06/18.
//  Copyright © 2018 Raksha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtOutlet: UITextField!
    
    @IBOutlet weak var txt1Outlet: UITextField!
    
    
    @IBAction func btnAction(_ sender: Any) {
        
        if let value: String  = txtOutlet.text{
            if(value.characters.count != 0){
              var n : Int = 0
                n = Int(value)!
                var x : Int = -1
                var y : Int = 1
                var z : Int = 0
                for var i in 1..<n+1{
                    z = x + y
                    txt1Outlet.text =  txt1Outlet.text! + " " + String(z)
                    x = y
                    y = z
                   i += 1
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

