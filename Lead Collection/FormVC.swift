//
//  FormVC.swift
//  Lead Collection
//
//  Created by MindHack on 09/05/2019.
//  Copyright © 2019 Trainer. All rights reserved.
//

import Foundation
import UIKit

class FormVC: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var technologySegmentedControl: UISegmentedControl!
    @IBOutlet weak var reasonTextField: UITextView!
    @IBOutlet weak var contactDateDatePicker: UIDatePicker!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func sendButtonWasPressed(_ sender: Any) {
        print(firstNameTextField.text,
              lastNameTextField.text,
              emailTextField.text,
              phoneTextField.text,
              
//              technologySegmentedControl.selectedSegmentIndex,
              technologySegmentedControl.titleForSegment(at: technologySegmentedControl.selectedSegmentIndex),
              
              reasonTextField.text,
        contactDateDatePicker.date)
        
    }
    @IBAction func resetButtonWasPressed(_ sender: Any) {
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
}
