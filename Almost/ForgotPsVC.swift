//
//  ForgotPsVC.swift
//  Almost
//
//  Created by Nguyen Hoang Viet on 24/08/2021.
//

import UIKit
import Toast_Swift
import Firebase
import FirebaseAuth

class ForgotPsVC: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func OntapForgotPassWord(_ sender: Any) {
        view.endEditing(true)
        if(tfEmail.text == "")
        {
            self.view.makeToast("Mời bạn nhập email")
        }
        else{
        Auth.auth().sendPasswordReset(withEmail: tfEmail.text!) { error in
            if error != nil {
                self.view.makeToast(error!.localizedDescription)
            }
            else
            {
                self.view.makeToast("Send verication")
            }
        }
        }
        
        
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
