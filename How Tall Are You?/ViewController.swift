//
//  ViewController.swift
//  How Tall Are You?
//
//  Created by Julianna Stevenson on 9/30/15.
//  Copyright © 2015 Julianna Stevenson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var feetText: UITextField!
    @IBOutlet weak var inchesText: UITextField!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    
    var feetValue:Float? = Float()
    var inchesValue:Float? = Float()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        answerLabel.text = ""
        questionLabel.sizeToFit()
        answerLabel.sizeToFit()
        
        feetText.delegate = self
        feetText.keyboardType = UIKeyboardType.NumberPad
        inchesText.delegate = self
        inchesText.keyboardType = UIKeyboardType.NumberPad
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func feetEntered(sender: AnyObject){
        feetValue = Float(feetText.text!)
    }
    
    @IBAction func inchesEntered(sender:
        AnyObject) {
        inchesValue = Float(inchesText.text!)
    }
    
    @IBAction func goButtonClicked(sender: AnyObject) {
        if(feetValue != nil && inchesValue != nil){
            let chickenHeight:Float = Float((feetValue!*12 + inchesValue!))/16
            
            let height = String(format: "%.2f chickens tall", chickenHeight)
            
            answerLabel.text = String(height)
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        feetText.resignFirstResponder()
        inchesText.resignFirstResponder()
    }
}
