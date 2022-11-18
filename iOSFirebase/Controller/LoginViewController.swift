//
//  LoginViewController.swift
//  iOSFirebase
//
//  Created by almir.tavares on 15/11/22.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let navigationBarAppearance: UINavigationBarAppearance = {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.backgroundColor = .none
        
        return appearance
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    override func loadView() {
        view = LoginView(delegate: self)
    }
    
    private func setupNavigationBar() {

        self.navigationController?.navigationBar.standardAppearance = navigationBarAppearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance
        
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
