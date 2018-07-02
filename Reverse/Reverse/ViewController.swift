//
//  ViewController.swift
//  Reverse
//
//  Created by Raksha Singh on 30/06/18.
//  Copyright © 2018 Raksha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtOutlet: UITextField!
    @IBOutlet weak var lblOutlet: UILabel!
    @IBAction func btnAction(_ sender: Any) {
        
        if let value1: String  = txtOutlet.text{
            if(value1.characters.count != 0){
                
                var text1 : Int = 0
                text1 = Int(value1)!
                var temp : Int = text1
                var sum : Int = 0
                while(temp > 0){
                    sum = (sum*10) + (temp % 10);
                    temp = temp/10;
                }
                print(sum)
                self.lblOutlet.text = "\(sum)"
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

