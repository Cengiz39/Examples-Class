//
//  ViewController.swift
//  classloginpage
//
//  Created by Cengiz Baygın on 27.08.2019.
//  Copyright © 2019 Cengiz Baygın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//toFirstPageSegue
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var loginUserPasswordTextField: UITextField!
    @IBOutlet weak var loginUserIDTextField: UITextField!
    var loginPageClass : registerClasses?
    var userLoginID = String() , userPassword = String()
    var UserID = String() , userPass = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func loginSuccessfullAlert () {
        let loginSuccessfullAlertMessage = UIAlertController.init(title: "Giriş Başarılı !", message: "Class içindeki bilgilerle uyuşuyor.", preferredStyle: UIAlertController.Style.alert)
        let loginOkButton = UIAlertAction.init(title: "Tamam!", style: UIAlertAction.Style.default, handler: nil)
        loginSuccessfullAlertMessage.addAction(loginOkButton)
        self.present(loginSuccessfullAlertMessage, animated: true, completion: nil)
    }
    func loginFailAlert () {
        let loginFailAlertMessage = UIAlertController.init(title: "Giriş Başarısız!", message: "Class içindeki bilgilerle uyuşmuyor.", preferredStyle: UIAlertController.Style.alert)
        let loginFailButton = UIAlertAction.init(title: "Tamam!", style: UIAlertAction.Style.default, handler: nil)
       loginFailAlertMessage.addAction(loginFailButton)
        self.present(loginFailAlertMessage, animated: true, completion: nil)
    }
//Funcs
    @IBAction func loginButtonClicked(_ sender: Any) {
      userLoginID = loginUserIDTextField.text!
      userPassword = loginUserPasswordTextField.text!
        if userLoginID == loginPageClass?.UserID && userPassword == loginPageClass?.UserPassword {
            loginSuccessfullAlert()
        }
        else {
            loginFailAlert()
        }
    }
    
}

