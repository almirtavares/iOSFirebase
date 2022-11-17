//
//  LoginViewController.swift
//  iOSFirebase
//
//  Created by almir.tavares on 15/11/22.
//

import UIKit

final class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = LoginView(delegate: self)
    }
}

extension LoginViewController: LoginViewDelegate {
    func loginButtonTapped() {
        print("Tap Login Button") // TODO: It will be defined
    }
    
    func signUpButtonTapped() {
        print("Tap Sign Up Button") // TODO: It will be defined
    }
}
