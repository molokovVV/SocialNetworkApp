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
        let labelLogin = UILabel()
        labelLogin.text = "Login"
        labelLogin.textAlignment = .center
        labelLogin.font = UIFont.boldSystemFont(ofSize: 25)
        labelLogin.textColor = .white
        
        return labelLogin
    }()
    
    private lazy var labelForgotPassword: UILabel = {
        let labelForgotPaswword = UILabel()
        labelForgotPaswword.text = "Forgot your password?"
        labelForgotPaswword.textAlignment = .center
        labelForgotPaswword.font = UIFont.boldSystemFont(ofSize: 13)
        labelForgotPaswword.textColor = .white
        
        return labelForgotPaswword
    }()
    
    private lazy var labelConnect: UILabel = {
        let labelConnect = UILabel()
        labelConnect.text = "or connect with"
        
        return labelConnect
    }()
    
    private lazy var labelHaveAccount: UILabel = {
        let labelHaveAccount = UILabel()
        labelHaveAccount.text = "Don't have account?"
        labelHaveAccount.textAlignment = .center
        labelHaveAccount.font = UIFont.boldSystemFont(ofSize: 13)
        labelHaveAccount.textColor = .systemBlue
        
        return labelHaveAccount
    }()
    
    private lazy var labelSign: UILabel = {
       let labelSign = UILabel()
        labelSign.text = "Sign up"
        labelSign.textAlignment = .center
        labelSign.font = UIFont.boldSystemFont(ofSize: 13)
        labelSign.textColor = .systemBlue
        
        return labelSign
    }()
    
    private lazy var textFieldLogin: UITextField = {
        let textFieldLogin = UITextField()
        textFieldLogin.placeholder = "Login"
        textFieldLogin.textAlignment = .center
        textFieldLogin.textColor = .systemGray2
        textFieldLogin.font = UIFont.boldSystemFont(ofSize: 16)
        textFieldLogin.layer.cornerRadius = 26
        textFieldLogin.backgroundColor = .white
        
        
        return textFieldLogin
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textFieldPassword = UITextField()
        textFieldPassword.placeholder = "Password"
        textFieldPassword.textAlignment = .center
        textFieldPassword.textColor = .systemGray2
        textFieldPassword.font = UIFont.boldSystemFont(ofSize: 16)
        textFieldPassword.layer.cornerRadius = 26
        textFieldPassword.backgroundColor = .white
        
        return textFieldPassword
    }()
    
    private lazy var buttonLogin: UIButton = {
        let buttonLogin = UIButton()
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.layer.cornerRadius = 26
        buttonLogin.backgroundColor = .systemIndigo
        
        return buttonLogin
    }()
    
    private lazy var buttonFacebook: UIButton = {
        let buttonFacebook = UIButton()
        buttonFacebook.setTitle("Facebook", for: .normal)
        buttonFacebook.layer.cornerRadius = 15
        buttonFacebook.backgroundColor = .systemBlue
        buttonFacebook.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        return buttonFacebook
    }()
    
    private lazy var buttonTwitter: UIButton = {
        let buttonTwitter = UIButton()
        buttonTwitter.setTitle("Twitter", for: .normal)
        buttonTwitter.layer.cornerRadius = 15
        buttonTwitter.backgroundColor = .systemIndigo
        buttonTwitter.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        return buttonTwitter
    }()
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "background")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    //MARK: - Stacks
    
    private lazy var buttonNetworkStack: UIStackView = {
        let buttonStack = UIStackView()
        buttonStack.axis = .horizontal
        buttonStack.alignment = .center
        buttonStack.distribution = .equalSpacing
        buttonStack.spacing = 30
        buttonStack.addArrangedSubview(buttonFacebook)
        buttonStack.addArrangedSubview(buttonTwitter)
        return buttonStack
    }()
    
    private lazy var labelSignUpStack: UIStackView = {
        let labelSignUpStack = UIStackView()
        labelSignUpStack.axis = .horizontal
        labelSignUpStack.alignment = .center
        labelSignUpStack.distribution = .equalSpacing
        labelSignUpStack.spacing = 5
        labelSignUpStack.addArrangedSubview(labelHaveAccount)
        labelSignUpStack.addArrangedSubview(labelSign)
        return labelSignUpStack
    }()
    
    //MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
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
            make.width.equalTo(130)
        }
        
        buttonTwitter.snp.makeConstraints { make in
            make.width.equalTo(130)
        }
    }
}

