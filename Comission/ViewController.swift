//
//  ViewController.swift
//  Comission
//
//  Created by Samuel Schuffler on 10/8/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var commissionPayTextField: UITextField!
    @IBOutlet weak var TotalPayLabel: UILabel!
    let basePay:Int = 500
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func calculateOnTapped(_ sender: UIButton) {
        getInput()
    }
    func getInput(){
        if let data = commissionPayTextField.text, let commissionPay = Int(data){
            print("everything is fine")
        } else {
            print("error occured")
        }
    }
}

