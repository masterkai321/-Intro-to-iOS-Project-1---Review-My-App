//
//  SettingsViewController.swift
//  TipThat
//
//  Created by Nelleke Masterson on 12/8/15.
//  Copyright © 2015 Nelleke Masterson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
        override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    
        

        // Do any additional setup after loading the view.
    }

    

    //func tipChanged(sender: AnyObject) ->Double{
               // return tipPercentage
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
   }
    override func viewWillAppear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let percentIndex = defaults.integerForKey("tip value")
        tipControl.selectedSegmentIndex = percentIndex
        
    }
    @IBAction func tipChanged(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let index = tipControl.selectedSegmentIndex
        defaults.setInteger(index, forKey: "tip value")
        defaults.synchronize()
        
    }
    
    }
    
        

        

    
        //DestViewController.currencyLabel =
    
        
        // Dispose of any resources that can be recreated.

   
    //MARK: - Delegates and data sources
    //MARK: Data Sources



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

