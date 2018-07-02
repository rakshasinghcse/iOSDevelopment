//
//  ViewController.swift
//  NoTable
//
//  Created by Raksha Singh on 02/07/18.
//  Copyright © 2018 Raksha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource ,UITableViewDelegate , UITextFieldDelegate{
    @IBOutlet weak var txtOutlet: UITextField!
    
    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    @IBAction func oneTapGesture(_ sender: UITapGestureRecognizer) {
        
        self.view.endEditing(true)
    }
    
    var number : Int? = nil
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cellid" , for: indexPath)
        if let value : String = txtOutlet.text {
            let trimedString = value.trimmingCharacters(in: .whitespaces)
            if( trimedString.characters.count != 0){
                cell.textLabel?.text = "\(number!) * \(indexPath.row + 1 )  = \(Int(indexPath.row + 1) * number! )"
            }
            
        }
        return cell
    }

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtOutlet.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if let value : String = txtOutlet.text {
            let trimedString = value.trimmingCharacters(in: .whitespaces)
            if( trimedString.characters.count != 0){
                number = Int (value)
                self.tableview.reloadData()
                
            }}
    }

}

