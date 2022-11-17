//
//  CodeView.swift
//  iOSFirebase
//
//  Created by almir.tavares on 16/11/22.
//

import Foundation

protocol CodeView {
    func setupUI()
    func setupComponents()
    func setupConstraints()
    func setupConfigurations()
}

extension CodeView {
    func setupUI() {
        setupComponents()
        setupConstraints()
        setupConfigurations()
    }
}
