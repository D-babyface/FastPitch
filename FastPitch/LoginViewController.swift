//
//  logggViewController.swift
//  Diversity In Baseball-Xcode
//
//  Created by HGPMAC18 on 8/4/17.
//  Copyright © 2017 Dwight Davenport. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginTapped(_ sender: UIButton) {
       if let email = emailTextField.text, let password =
        passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password:
                password, completion: { (user, error )in
                    if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
                print("Success!")
                 })
        
        
            }
        
        }
    
    @IBAction func showAlertButtonTapped(_ sender: AnyObject)
    {
        var myalert = UIAlertController(title: "Alert", message: "Success! ", preferredStyle:UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default){(ACTION) in
            print("Ok button tapped");
        }
    
//        do  { If ("Ok button tapped"); glob to EntryViewController() }
        
        myalert.addAction(okAction);
        
        self.present(myalert, animated: true, completion: nil);
        
        func Back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    }


}
