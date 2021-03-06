//
//  ViewController.swift
//  TipC
//
//  Created by Ananya Prayaga on 4/25/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billfield: UITextField!
    @IBOutlet weak var tipLabel:UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any)
    {
        // get the bill amount
        let bill = Double(billfield.text!) ?? 0
        //calculate the tip and total
        let tipPercentages=[0.15,0.18,0.20]
        let tip=bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total=bill+tip
        tipLabel.text=String(format:"$%.2f",tip)
        totalLabel.text=String(format:"$%.2f",total)
        
    }
    
}
