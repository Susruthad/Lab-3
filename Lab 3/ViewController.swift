//
//  ViewController.swift
//  Lab 3
//
//  Created by user240733 on 1/28/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var textViewInput: UITextView!
    
    @IBOutlet weak var invisibleLabel: UILabel!
    
    
    @IBAction func firstNameInput(_ sender: Any) {
    }
    
    @IBAction func lastNameInput(_ sender: Any) {
    }
    
    @IBAction func countryInput(_ sender: Any) {
    }
    
    @IBAction func ageInput(_ sender: Any) {
    }
    
    @IBAction func addButton(_ sender: Any) {
        updateTextView()
    }
    
    @IBAction func submitButton(_ sender: Any) {
        if incompleteInformation() {
                 invisibleLabel.text = "Successfully submitted!"
                   } else {
                   invisibleLabel.text = "Complete the missing Info!"
                           }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        clearAllFields()
    }
    
    
    private func clearAllFields() {
               firstNameTextField.text = ""
               lastNameTextField.text = ""
               countryTextField.text = ""
               ageTextField.text = ""       
               textViewInput.text = ""
               invisibleLabel.text = ""
           }
    
    private func updateTextView() {
        let fullName = "Full Name: \(firstNameTextField.text ?? "") \(lastNameTextField.text ?? "")"
        let userInfo = "\(fullName)\nCountry: \(countryTextField.text ?? "")\nAge: \(ageTextField.text ?? "")"
        textViewInput.text = userInfo
    }
    
    private func incompleteInformation() -> Bool {
               return !firstNameTextField.text!.isEmpty &&
                      !lastNameTextField.text!.isEmpty &&
                      !countryTextField.text!.isEmpty &&
                      !ageTextField.text!.isEmpty
           }
    
}

