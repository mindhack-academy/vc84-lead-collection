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
//        print(firstNameTextField.text,
//              lastNameTextField.text,
//              emailTextField.text,
//              phoneTextField.text,
//
////              technologySegmentedControl.selectedSegmentIndex,
//              technologySegmentedControl.titleForSegment(at: technologySegmentedControl.selectedSegmentIndex),
//
//              reasonTextField.text,
//        contactDateDatePicker.date)
        
        var user: User = User()
        
            user.firstName = firstNameTextField.text
            user.lastName = lastNameTextField.text
            user.email = emailTextField.text
            user.phone = phoneTextField.text
        
        print("----- USER -----")
        print(user)
        
        var formData: FormData = FormData ()
            formData.user = user
            formData.technology = technologySegmentedControl.selectedSegmentIndex
            formData.reason = reasonTextField.text
            formData.contactDate = contactDateDatePicker.date
        
        print("----- FORM DATA -----")
        print(formData)
        
        
        // add to StorageManager
        StorageManager.shared.addData(formData: formData)
        
        // print StorageManager data
        print (StorageManager.shared.getData())
        
        // reset form
        resetForm()
        
        
    }
    
    
    @IBAction func resetButtonWasPressed(_ sender: Any) {
        resetForm()
    }
    
    func resetForm() {
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        emailTextField.text = ""
        phoneTextField.text = ""
        technologySegmentedControl.selectedSegmentIndex = 0
        reasonTextField.text = ""
        contactDateDatePicker.date = Date()
        //in order to reposition the cursor on a specific field
        firstNameTextField.becomeFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
}
