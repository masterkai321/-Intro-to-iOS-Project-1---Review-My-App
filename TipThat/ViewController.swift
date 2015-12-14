//
//  ViewController.swift
//  TipThat
//
//  Created by Nelleke Masterson on 12/6/15.
//  Copyright © 2015 Nelleke Masterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController { 
    
   
 
    
    
   
    @IBOutlet weak var billText: UILabel!
    @IBOutlet weak var tiptext: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var plusLabel: UILabel!
   
   
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalField: UILabel!
    @IBOutlet weak var split2Label: UILabel!
    @IBOutlet weak var split2amountLabel: UILabel!
    @IBOutlet weak var split3Label: UILabel!
    @IBOutlet weak var split3amountLabel: UILabel!
    
    @IBOutlet weak var tiptextLabel: UILabel!
    @IBOutlet weak var barView: UIView!
    
    @IBOutlet weak var splitcustomField: UITextField!
    @IBOutlet weak var splitcustomamountLabel: UILabel!
    
    @IBOutlet weak var anyamountText: UILabel!
    @IBOutlet weak var splitText: UILabel!
    @IBOutlet weak var splitarrow2: UILabel!
    @IBOutlet weak var splitarrow3: UILabel!
    @IBOutlet weak var splitarrowcustom: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalField.text = "$0.00"
        split2amountLabel.text = "$0.00"
        split3amountLabel.text = "$0.00"
        splitcustomamountLabel.text = "$0.00"
        billField.becomeFirstResponder()
        
        
        self.split2Label.alpha = 0
        self.split3Label.alpha = 0
        self.splitcustomamountLabel.alpha = 0
        self.split2amountLabel.alpha = 0
        self.split3amountLabel.alpha = 0
        self.tipLabel.alpha = 0
        self.barView.alpha = 0
        self.totalField.alpha = 0
        self.plusLabel.alpha = 0
        self.totalLabel.alpha = 0
        self.tiptextLabel.alpha = 0
        self.splitcustomField.alpha = 0
        self.anyamountText.alpha = 0
        self.splitText.alpha = 0
        self.splitarrow2.alpha = 0
        self.splitarrow3.alpha = 0
        self.splitarrowcustom.alpha = 0
        self.tiptext.alpha = 0
        self.tipControl.alpha = 0
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(0.15, forKey: "tip")
        defaults.synchronize()
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let percentValue = defaults.integerForKey("tip value")
        tipControl.selectedSegmentIndex = percentValue
        super.viewWillAppear(animated)
        print("view will appear")
    }
    /*
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    */
   
    @IBAction func onCustomAmountChanged(sender: AnyObject) {
        
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
            self.split2Label.alpha = 1
            self.split3Label.alpha = 1
            self.splitcustomamountLabel.alpha = 1
            self.split2amountLabel.alpha = 1
            self.split3amountLabel.alpha = 1
            self.tipLabel.alpha = 1
            self.totalField.alpha = 1
            self.plusLabel.alpha = 1
            self.totalLabel.alpha = 1
            self.tiptextLabel.alpha = 1
            self.billField.alpha = 1
            self.splitcustomField.alpha = 1
            self.barView.alpha = 1
            self.anyamountText.alpha = 1
            self.splitText.alpha = 1
            self.splitarrow2.alpha = 1
            self.splitarrow3.alpha = 1
            self.splitarrowcustom.alpha = 1
          
            self.tiptext.alpha = 1
           
            self.tipControl.alpha = 1
        })
        
        UIView.animateWithDuration(0.5, animations: {
            var newCenter = self.billField.center
            newCenter.x = 235
            newCenter.y = 170
            self.billField.center = newCenter
            
        })
        
        
        var customAmount :Double = NSString(string: splitcustomField.text!).doubleValue
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalField.text = "$\(total)"
        split2amountLabel.text = "$\(total/2)"
        split3amountLabel.text = "$\(total/3)"
        splitcustomamountLabel.text = "$\(total / customAmount)"
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalField.text = String(format: "$%.2f", total)
        split2amountLabel.text = String(format: "$%.2f", total/2)
        split3amountLabel.text = String(format: "$%.2f", total/3)
        splitcustomamountLabel.text = String(format: "$%.2f", total/customAmount)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)    }
    
   
    }
   
        




