//
//  NewTableViewController.swift
//  project
//
//  Created by User23 on 2018/6/29.
//  Copyright © 2018年 User23. All rights reserved.
//

import UIKit

class NewTableViewController: UITableViewController {

    
   
    @IBAction func done(_ sender: Any) {
        
        performSegue(withIdentifier: "goBackToTableWithSegue", sender: nil)
    }
    
    var data: Data?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var priceTextField: UITextField!
    
    
    @IBOutlet weak var detailTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = data {
            nameTextField.text = data.name
            priceTextField.text = data.price
            detailTextView.text = data.detail
            
        }
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    

    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if data == nil {
            data = Data(name: nameTextField.text!,price: priceTextField.text!,detail: detailTextView.text!)
        } else {
            data?.name = nameTextField.text!
            data?.price = priceTextField.text!
            data?.detail = detailTextView.text!
           }
   

}
}
