//
//  LoginViewController.swift
//  iOSFirebase
//
//  Created by almir.tavares on 15/11/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 13
        
        return stackView
    }()
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .emailAddress
        textField.placeholder = "Name"
        textField.font = UIFont(name: "Helvetica Neue", size: 14)
        textField.borderStyle = .roundedRect
        textField.returnKeyType = .done
        
        return textField
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .emailAddress
        textField.placeholder = "E-Mail"
        textField.font = UIFont(name: "Helvetica Neue", size: 14)
        textField.borderStyle = .roundedRect
        textField.returnKeyType = .done
        
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .numberPad
        textField.isSecureTextEntry = true
        textField.placeholder = "Password"
        textField.font = UIFont(name: "Helvetica Neue", size: 14)
        textField.borderStyle = .roundedRect
        textField.returnKeyType = .done
        
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
        setupUI()
    }
    
    private func setupNavigationBar() {
        self.navigationItem.title = "Welcome"
    }
    
    private func setupUI() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)

        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        nameTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        emailTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        passwordTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
    }
}
