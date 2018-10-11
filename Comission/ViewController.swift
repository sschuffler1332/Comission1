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
        let comPay = getInput()
        let totalPay = comPay + Double(basePay)
        let formattedPay = String(format: "%.2f", totalPay)
        TotalPayLabel.text = "Total Pay = $\(totalPay)"
    }
    func getInput() -> Double
    {
        if let data = commissionPayTextField.text, let commissionPay = Double(data){
            return commissionPay
        } else {
            return 0
        }
    }
}

