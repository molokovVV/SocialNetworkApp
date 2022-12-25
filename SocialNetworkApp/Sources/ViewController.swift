//
//  ViewController.swift
//  SocialNetworkApp
//
//  Created by Виталик Молоков on 22.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    //MARK: - UI Elements
    
    private lazy var labelLogin: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Black", size: 35)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var labelForgotPassword: UILabel = {
        let label = UILabel()
        label.text = "Forgot your password?"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Black", size: 13)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var labelConnect: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.font = UIFont(name: "Avenir-Black", size: 13)
        label.textColor = .systemGray2
        
        
        return label
    }()
    
    private lazy var labelHaveAccount: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Black", size: 13)
        label.textColor = .systemGray2
        
        return label
    }()
    
    private lazy var labelSign: UILabel = {
       let label = UILabel()
        label.text = "Sign up"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Black", size: 13)
        label.textColor = .systemBlue
        
        return label
    }()
    
    private lazy var textFieldLogin: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Login"
        textField.textAlignment = .center
        textField.textColor = .systemGray2
        textField.font = UIFont.boldSystemFont(ofSize: 16)
        textField.layer.cornerRadius = 26
        textField.backgroundColor = .white
        textField.setShadow(textField)
        
        if let loginImage = UIImage(named: "userLoginIcon"){
            textField.setLeftIcon(loginImage)
        }
        
        return textField
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.textAlignment = .center
        textField.textColor = .systemGray2
        textField.font = UIFont.boldSystemFont(ofSize: 16)
        textField.layer.cornerRadius = 26
        textField.backgroundColor = .white
        textField.setShadow(textField)
        
        if let passwordImage = UIImage(named: "passwordIcon"){
            textField.setLeftIcon(passwordImage)
        }
        
        return textField
    }()
    
    private lazy var buttonLogin: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 26
        button.backgroundColor = .systemIndigo
        button.setShadow(button)
        
        return button
    }()
    
    private lazy var buttonFacebook: UIButton = {
        let button = UIButton(type: .system)
        
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "facebookIcon")
        configuration.imagePadding = 3
        configuration.imagePlacement = .leading
        configuration.cornerStyle = .capsule
        configuration.baseBackgroundColor = .systemBlue
        configuration.titleAlignment = .center
        
        button.configuration = configuration
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Facebook", for: .normal)
        button.setShadow(button)
        
        return button
    }()
    
    private lazy var buttonTwitter: UIButton = {
        let button = UIButton(type: .system)
        
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "twitterIcon")
        configuration.imagePadding = 3
        configuration.imagePlacement = .leading
        configuration.cornerStyle = .capsule
        configuration.baseBackgroundColor = .systemBlue
        configuration.titleAlignment = .center
        
        button.configuration = configuration
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Twitter", for: .normal)
        button.setShadow(button)
        
        return button
    }()
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "background")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    //MARK: - Stacks
    
    private lazy var buttonNetworkStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .equalSpacing
        stack.spacing = 30
        stack.addArrangedSubview(buttonFacebook)
        stack.addArrangedSubview(buttonTwitter)
        return stack
    }()
    
    private lazy var labelSignUpStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .equalSpacing
        stack.spacing = 5
        stack.addArrangedSubview(labelHaveAccount)
        stack.addArrangedSubview(labelSign)
        return stack
    }()
    
    //MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
        setupHideKeyboard()
    }
    
    //MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(buttonLogin)
        view.addSubview(labelForgotPassword)
        view.addSubview(labelLogin)
        view.addSubview(textFieldLogin)
        view.addSubview(textFieldPassword)
        view.addSubview(labelSignUpStack)
        view.addSubview(buttonNetworkStack)
        view.addSubview(labelConnect)
    }
    
    private func setupLayout() {
        labelLogin.snp.makeConstraints { make in
            make.top.equalTo(view).offset(100)
            make.centerX.equalTo(view)
        }
        
        textFieldLogin.snp.makeConstraints { make in
            make.left.equalTo(view).offset(60)
            make.right.equalTo(view).offset(-60)
            make.height.equalTo(50)
            make.top.equalTo(labelLogin.snp.bottom).offset(60)
        }
        
        textFieldPassword.snp.makeConstraints { make in
            make.left.equalTo(view).offset(60)
            make.right.equalTo(view).offset(-60)
            make.height.equalTo(50)
            make.top.equalTo(textFieldLogin.snp.bottom).offset(20)
        }
        
        buttonLogin.snp.makeConstraints { make in
            make.top.equalTo(textFieldPassword.snp.bottom).offset(60)
            make.left.equalTo(view).offset(60)
            make.right.equalTo(view).offset(-60)
            make.height.equalTo(50)
        }
        
        labelForgotPassword.snp.makeConstraints { make in
            make.top.equalTo(buttonLogin.snp.bottom).offset(30)
            make.left.equalTo(view).offset(60)
            make.right.equalTo(view).offset(-60)
            make.height.equalTo(50)
        }
        
        labelSignUpStack.snp.makeConstraints { make in
            make.bottom.equalTo(view).offset(-50)
            make.left.equalTo(view).offset(100)
        }
        
        buttonNetworkStack.snp.makeConstraints { make in
            make.bottom.equalTo(labelSignUpStack.snp.top).offset(-40)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
        }
        
        
        
        buttonFacebook.snp.makeConstraints { make in
            make.width.equalTo(135)
        }
        
        buttonTwitter.snp.makeConstraints { make in
            make.width.equalTo(135)
        }
        
        labelConnect.snp.makeConstraints { make in
            make.bottom.equalTo(buttonNetworkStack.snp.top).offset(-30)
            make.centerX.equalTo(view)
        }
    }
    
    private func setupHideKeyboard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    //MARK: - Actions
    
    @objc private func hideKeyboard() {
        view.endEditing(true)
    }
}
