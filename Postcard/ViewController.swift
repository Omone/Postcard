//
//  ViewController.swift
//  Postcard
//
//  Created by Alessandro Castrucci on 09/09/14.
//  Copyright (c) 2014 d-Mobilelab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
	@IBOutlet weak var messageLabel: UILabel!
	
	@IBOutlet weak var nameLabel: UILabel!
	
	@IBOutlet weak var enterNameTextField: UITextField!
	
	@IBOutlet weak var enterMessageTextField: UITextField!
	
	@IBOutlet weak var mailButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func sendMailButtonPressed(sender: UIButton) {
		//Code will evaluate when we press the button
		messageLabel.hidden = false
		messageLabel.text = enterMessageTextField.text //"Message Sent"
		
		nameLabel.hidden = false
		nameLabel.text = enterNameTextField.text
		nameLabel.textColor = UIColor.blueColor()
		enterNameTextField.text = ""
		
		enterMessageTextField.text = ""
		enterMessageTextField.resignFirstResponder()
		enterNameTextField.resignFirstResponder()
		messageLabel.textColor = UIColor.redColor()
		mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
		
	}

}

