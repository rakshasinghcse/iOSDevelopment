//
//  ViewController.swift
//  prime_no
//
//  Created by Raksha Singh on 29/06/18.
//  Copyright © 2018 Raksha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtOutlet: UITextField!
    @IBOutlet var lblOutlet: UILabel!
    @IBAction func btnAction(_ sender: Any) {
        if let value: String  = txtOutlet.text{
            if(value.characters.count != 0){
                var n : Int = 0
                var count : Int = 0
                n = Int(value)!
                for var i in 1..<n+1{
                    if (n % i == 0){
                        count = count + 1
                    }
                i += 1
                }
                if (count == 2)
                {
                    self.lblOutlet.text = "Prime Number"
                }
                else{
                    self.lblOutlet.text = "Not Prime Number"
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

