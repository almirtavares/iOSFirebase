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
    
    private let loginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 50))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .purple
        
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
        setupUI()
        addTouchUpInside(to: loginButton)
        addTouchUpInside(to: signUpButton)
    }
    
    private func setupNavigationBar() {
        self.navigationItem.title = "Welcome"
    }
    
    private func setupUI() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        view.addSubview(signUpButton)

        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        nameTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        emailTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        passwordTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        loginButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func addTouchUpInside(to button: UIButton) {
        button.addTarget(self, action: #selector(touchUpInside), for: .touchUpInside)
    }
    
    @objc private func touchUpInside(sender: UIButton!) {
        
        switch sender {
        case loginButton:
            print("Tap Login Button") // TODO: It will be defined
        case signUpButton:
            print("Tap Sign Up Button") // TODO: It will be defined
        default:
            return
        }
    }
}
