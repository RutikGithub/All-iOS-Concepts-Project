//
//  PersonEnquiryViewController.swift
//  TapBarNineteenPractical
//
//  Created by Mac on 25/04/23.
//

import UIKit

class PersonEnquiryViewController: UIViewController {
@IBOutlet weak var personName: UITextField!
@IBOutlet weak var personMobileNo: UITextField!
@IBOutlet weak var personEmailId: UITextField!
@IBOutlet weak var personPassword: UITextField!
    
    var delegate:DataPassing?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func submitButton(_ sender: Any) {
        
        let pName = self.personName.text!
        let pMobNo = Double(self.personMobileNo.text!)
        let pEmailId = self.personEmailId.text!
        let pPass = self.personPassword.text!
        
        
        let persons = Person(name: pName, mobileNumber: pMobNo!, emailId: pEmailId, password: pPass)
        delegate?.BackDataPassing(person: persons)
        
        
        let alertAction = UIAlertController(title: "Are You Sure?", message: "Do you really want to submit data?", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Yes", style: .destructive, handler: { _ in
            self.navigationController?.popViewController(animated: true)
        })
        let action1 = UIAlertAction(title: "No", style: .cancel)
        
        alertAction.addAction(action)
        alertAction.addAction(action1)
        
        present(alertAction, animated: true)

       // byAlertSheet()
       
        
    }
    /*
    func byAlert()
    {
        let alertAction = UIAlertController(title: "Are You Sure?", message: "Do you really want to submit data?", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Yes", style: .destructive)
        let action1 = UIAlertAction(title: "No", style: .cancel)
        
        alertAction.addAction(action)
        alertAction.addAction(action1)
        
        present(alertAction, animated: true)
    }*/
    func byAlertSheet()
    {
        let alertSheet = UIAlertController(title: "Are You Sure?", message: "Do you really want to submit data?", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Yes", style: .destructive)
        let action1 = UIAlertAction(title: "No", style: .cancel)
        
        alertSheet.addAction(action)
        alertSheet.addAction(action1)
        present(alertSheet, animated: true)
     
    }
}
