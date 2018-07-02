//
//  ViewController.swift
//  EvenOdd
//
//  Created by Raksha Singh on 03/07/18.
//  Copyright © 2018 Raksha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource , UITextFieldDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0){
            return odd.count
        }
        else {
            return even.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid" , for: indexPath)
        if( indexPath.section == 0){
            cell.textLabel?.text  = "\(odd[indexPath.row])"
        }
        if(indexPath.section == 1){
            cell.textLabel?.text  = "\(even[indexPath.row])"

        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 0){
            return "odd"
        }
        else {
            return "even"
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    var odd : [Int] = []
    var even = [Int]()
    @IBOutlet weak var txtOutlet: UITextField!
    @IBAction func btnAction(_ sender: Any) {
        if let value : String = txtOutlet.text{
            if( value.characters.count != 0){
               
                var no : Int = 0
                no = Int(value)!
                if (no % 2 == 0 ){
                    even.append(no)
                }
                else {
                    odd.append(no)

                }
                
                self.tableview.reloadData()
                txtOutlet.text = nil
                
            }
        }
    }
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

