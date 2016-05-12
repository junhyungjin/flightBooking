//
//  ViewController.swift
//  FlightBooking
//
//  Created by junhyungjin on 2016. 5. 12..
//  Copyright © 2016년 Hyung Jun Jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var departureDateButton: UIButton!
    @IBOutlet var returnDateLabel: UILabel!
    @IBOutlet var returnDateButton: UIButton!
    @IBOutlet var selectDatePicker: UIDatePicker!
    
    @IBAction func showDatePickerAction(sender: AnyObject) {
        print(sender.description!)
    }
    
    
    @IBAction func showReturnDateAction(sender: AnyObject) {
     //   if ( sender as! UISwitch).on {
     //       returnDateLabel.hidden = false
     //       returnDateButton.hidden = false
     //   } else {
     //       returnDateLabel.hidden = true
     //      returnDateButton.hidden = true
     //   }
        
        returnDateLabel.hidden = !(sender as! UISwitch).on
        returnDateButton.hidden = !(sender as! UISwitch).on
    }
    
    @IBAction func selectedDateAction(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        returnDateLabel.hidden = true
        returnDateButton.hidden = true
        selectDatePicker.hidden = true
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

