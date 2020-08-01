//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Trevor Rizz on 7/27/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tipPercentageLabel.layer.backgroundColor = UIColor.cyan.cgColor
        
        billAmountTextField.layer.backgroundColor = UIColor.cyan.cgColor
        
        tipControl.layer.backgroundColor = UIColor.cyan.cgColor
        
        totalLabel.layer.backgroundColor = UIColor.cyan.cgColor
        	
    }

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get initial bill amount and calc tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calc tips and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
}

