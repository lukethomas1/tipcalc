//
//  ViewController.swift
//  tipcalc
//
//  Created by Luke T Thomas on 11/28/16.
//  Copyright © 2016 Luke T Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var plusSign: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calcTip(sender: AnyObject) {
        let tipArray = [0.15, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = tipArray[tipPercent.selectedSegmentIndex]
        
        billLabel.text = String(format: "$%.2f", bill)
        tipLabel.text = String(format: "$%.2f", bill * tip)
        totalLabel.text = String(format: "$%.2f", bill * tip + bill)
    }
}

