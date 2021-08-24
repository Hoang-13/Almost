//
//  ViewController.swift
//  Almost
//
//  Created by Nguyen Hoang Viet on 24/08/2021.
//

import UIKit
import Toast_Swift
import Firebase
import FirebaseAuth


class ViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfForgotPassword: UIButton!
    @IBOutlet weak var tfLogin: UIButton!
    @IBOutlet weak var tfRegister: UIButton!
    @IBOutlet var Swift12: UIView!
    
    @IBAction func ChangeScreen(_ sender: Any) {
       
    }
    @IBAction func OnTapForgotPassword(_ sender: Any) {
//        Auth.auth().sendPasswordReset(withEmail: "Anhvietmk05@gmail.com") { error in
//            if error != nil {
//                self.view.makeToast(error!.localizedDescription)
//            }
//            else
//            {
//                self.view.makeToast("Send verification")
//            }
//        }
        let vc = ForgotPsVC(nibName: "ForgotPsVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func OnTaplogin(_ sender: Any) {
        
    }
    @IBAction func OnTapRegister(_ sender: Any) {
       let vc = RegisterVC(nibName: "RegisterVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

