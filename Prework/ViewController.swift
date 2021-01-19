//
//  ViewController.swift
//  Prework
//
//  Created by Stanford on 19/1/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountLabel: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControler: UISegmentedControl!
    @IBOutlet weak var totalAmountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTips(_ sender: Any) {
        //1. This part gets the bill amount from billAmountLabel
        let bill = Double(billAmountLabel.text!) ?? 0
        
        let tip_percentage = [0.15, 0.18, 0.2]
        let tip = bill * tip_percentage[tipControler.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
        
        
        
    }
    
}

