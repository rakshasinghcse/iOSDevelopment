//
//  ViewController.swift
//  SwapTwoNo
//
//  Created by Raksha Singh on 30/06/18.
//  Copyright © 2018 Raksha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt1Outlet: UITextField!
    @IBOutlet weak var txt2Outlet: UITextField!
    @IBOutlet weak var lbl1Outlet: UILabel!
    @IBOutlet weak var lbl2Outlet: UILabel!
    var x: Int = 0
    var y: Int = 0
    @IBAction func btnAction(_ sender: Any) {
        
        
        
        if let value1: String  = txt1Outlet.text , let value2: String = txt2Outlet.text {
            if(value1.characters.count != 0 && value2.characters.count != 0){
                x = Int(value1)!
                y = Int(value2)!
                
                
                x = x + y
                y = x - y
                x = x - y
                
                self.lbl1Outlet.text = " a= \( x )"
                self.lbl2Outlet.text = " b= \( y )"
                
            }
            else{
                self.lbl1Outlet.text = "Enter valid no"
                self.lbl2Outlet.text = "Enter valid no"
                
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

