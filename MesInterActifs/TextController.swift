//
//  TextController.swift
//  MesInterActifs
//
//  Created by HAMDI TLILI on 13/07/2023.
//

import UIKit

class TextController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        view.addGestureRecognizer(tap)
        nameTextField.delegate = self
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Did end protocol\(textField.text!)")
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Did begin protocol\(textField.text!)")
    }
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("Did change selection protocol\(textField.text!)")
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("should clear protocol\(textField.text!)")
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(" Should return protocol\(textField.text!)")
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(" Should end editing protocol\(textField.text!)")
        return true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(" Should begin protocol\(textField.text!)")
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(" should Change Characters In range\(textField.text!)")
        return true
    }
    @IBAction func nameTFDidEndEditing(_ sender: UITextField) {
        print("Did End Editing: \(sender.text!)")
    }
    @objc func closeKeyboard() {
        view.endEditing(true)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
