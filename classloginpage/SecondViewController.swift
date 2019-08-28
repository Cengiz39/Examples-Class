//
//  SecondViewController.swift
//  classloginpage
//
//  Created by Cengiz Baygın on 27.08.2019.
//  Copyright © 2019 Cengiz Baygın. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var registerUserNameTextField: UITextField!
    @IBOutlet weak var registerPasswordTextField: UITextField!
    var userName = String()
    var userPassword = String()
    var RegisterPageClass : registerClasses?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func registerSuccesfullFunc() {
        let registerOkMessage = UIAlertController.init(title: "Kayıt Başarılı!", message: "Kaydınız Başarılı Bir Şekilde Tamamlanmıştır!", preferredStyle: UIAlertController.Style.alert)
        let registerOkButton = UIAlertAction.init(title: "Tamam !", style: UIAlertAction.Style.default) { (UIAlertAction) in
            self.performSegue(withIdentifier: "toFirstPageSegue", sender: nil)
        }
        registerOkMessage.addAction(registerOkButton)
        self.present(registerOkMessage, animated: true, completion: nil)
    }
// Funcs
    @IBAction func registerButtonClicked(_ sender: Any) {
      userName = registerUserNameTextField.text!
      userPassword = registerPasswordTextField.text!
        RegisterPageClass = registerClasses.init(userIDInit: userName, userPasswordInit: userPassword)
        registerSuccesfullFunc()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFirstPageSegue"{
            let destinationVC = segue.destination as! ViewController
            destinationVC.loginPageClass = RegisterPageClass
        }

    }

}
