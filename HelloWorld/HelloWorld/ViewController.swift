//
//  ViewController.swift
//  HelloWorld
//
//  Created by Raksha Singh on 28/06/18.
//  Copyright © 2018 Raksha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtOutlet: UITextField!
    @IBOutlet weak var lblOutlet: UILabel!
    
    @IBAction func buttonAction(_ sender: Any) {
        
        
        lblOutlet.text = txtOutlet.text! + " , Hello World"
        
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

