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
        setupNavigationBar()
    }
    
    override func loadView() {
        view = LoginView(delegate: self)
    }
    
    private func setupNavigationBar() {

        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        
        navBarAppearance.backgroundColor = .none
        self.navigationController?.navigationBar.standardAppearance = navBarAppearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        
        self.navigationItem.title = "Welcome"
        self.navigationController?.navigationBar.barStyle = .default
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
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
