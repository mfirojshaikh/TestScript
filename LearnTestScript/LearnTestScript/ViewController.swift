//
//  ViewController.swift
//  LearnTestScript
//
//  Created by Firoj Shaikh on 11/03/18.
//  Copyright © 2018 Firoj Shaikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapCheckValidity(_ sender: Any) {
        if let strName = txtUserName.text
        {
            let decimalCharacterSet = CharacterSet.decimalDigits
            let decimalRange = strName.rangeOfCharacter(from: decimalCharacterSet)
            if decimalRange != nil {
                print("Name contains Decimal Number.. Invalid Name")
            }
            else {
                print("Correct..")
            }
            
        }
    }
    
}

