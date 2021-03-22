//
//  ViewController.swift
//  modern_calculator
//
//  Created by Yossef on 8/28/19.
//  Copyright © 2019 Yossef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func buttonsAction(_ sender: myCustomButton) {
        
        if theScreen.text == "0" {theScreen.text = ""}
        if sender.tag == -1
        { if !theScreen.text!.contains(".")
            {
             theScreen.text = theScreen.text! + "."
            }
             
        }
        else
        {
            theScreen.text = theScreen.text! + String (sender.tag)
        }
    }
    let brain:brainCalculator = brainCalculator()
    @IBOutlet weak var theScreen: UILabel!
    
    @IBAction func operationButtonAction(_ sender: UIButton) {
        brain.Add(Number: Double(theScreen.text!)!, with: Character(sender.titleLabel!.text!))
        if sender.titleLabel!.text == "="
        {theScreen.text = brain.result()
            brain.restart()
        }
        else{
        theScreen.text = "0"
        }
    }
    
    @IBAction func ACButtonAction(_ sender: UIButton) {
        theScreen.text = "0"
        brain.restart()
    }
    @IBAction func minuseAndPlusConverter(_ sender: UIButton) {
        theScreen.text=String( Double(theScreen.text!)! * -1 )
    }
    @IBAction func hundredPercent(_ sender: UIButton) {
         theScreen.text=String( Double(theScreen.text!)! / 100 )
    }
    
    
    
}

