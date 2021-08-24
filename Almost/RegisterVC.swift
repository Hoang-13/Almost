//
//  RegisterVC.swift
//  Almost
//
//  Created by Nguyen Hoang Viet on 24/08/2021.
//

import UIKit
import Firebase
import Toast_Swift
import FirebaseAuth


class RegisterVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var tfREmail: UITextField!
    @IBOutlet weak var tfpassword: UITextField!
    @IBOutlet weak var tfRePassword: UITextField!
    
    @IBAction func OnTapRegister(_ sender: Any) {
        view.endEditing(true)
        if tfREmail.text == "" || tfpassword.text == ""{
            print("mời bạn nhập lại ")
        }
        else{
            Auth.auth().createUser(withEmail: tfREmail.text! , password: tfpassword.text!) { Audata , erros in
            if erros != nil {
                self.view.makeToast(erros!.localizedDescription)
            }
            else{
//                self.view.makeToast("Register Succfully!")
//                print(Audata?.user.email)
//
                Audata?.user.sendEmailVerification(completion: { Errors in
                    if Errors != nil {
                        self.view.makeToast(Errors!.localizedDescription)
                    }
                    else
                    {
                        self.view.makeToast("Send Verification")
                    }
                })
            }
        }
          
        }
        
    }
    
}
