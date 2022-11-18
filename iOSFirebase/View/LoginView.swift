//
//  LoginView.swift
//  iOSFirebase
//
//  Created by almir.tavares on 16/11/22.
//

import UIKit

protocol LoginViewDelegate: AnyObject {
    func loginButtonTapped()
    func signUpButtonTapped()
}

final class LoginView: UIView {

    // MARK: Properties
    weak var delegate: LoginViewDelegate?
    
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
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(displayP3Red: 0.5, green: 0.0, blue: 0.5, alpha: 1)
        button.layer.cornerRadius = 4
        
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(UIColor(displayP3Red: 0.5, green: 0.0, blue: 0.5, alpha: 1), for: .normal)
        
        return button
    }()
    
    // MARK: Constructors
    init(delegate: LoginViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Methods
    @objc private func touchUpInside(sender: UIButton!) {
        
        switch sender {
        case loginButton:
            delegate?.loginButtonTapped()
        case signUpButton:
            delegate?.loginButtonTapped()
        default:
            break
        }
    }
}

extension LoginView: CodeView {

    func setupComponents() {
        addSubview(stackView)
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(signUpButton)
    }
    
    func setupConstraints() {
        
        stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        
        nameTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        emailTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        passwordTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        
        loginButton.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -8).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        signUpButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    func setupConfigurations() {
        backgroundColor = UIColor(displayP3Red: 233.0/255.0, green: 233.0/255.0, blue: 233.0/255.0, alpha: 1)
        loginButton.addTarget(self, action: #selector(touchUpInside), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(touchUpInside), for: .touchUpInside)
    }
}
