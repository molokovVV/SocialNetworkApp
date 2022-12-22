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
        labelLogin.textColor = .systemBlue
        
        return labelLogin
    }()
    
    private lazy var labelForgotPassword: UILabel = {
        let labelForgotPaswword = UILabel()
        labelForgotPaswword.text = "Forgot your password?"
        labelForgotPaswword.textAlignment = .center
        labelForgotPaswword.font = UIFont.boldSystemFont(ofSize: 13)
        labelForgotPaswword.textColor = .systemBlue
        
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
        textFieldLogin.textColor = .black
        textFieldLogin.font = UIFont.boldSystemFont(ofSize: 16)
        textFieldLogin.layer.cornerRadius = 26
        textFieldLogin.backgroundColor = .white
        
        
        return textFieldLogin
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textFieldPassword = UITextField()
        textFieldPassword.placeholder = "Password"
        textFieldPassword.textAlignment = .center
        textFieldPassword.textColor = .black
        textFieldPassword.font = UIFont.boldSystemFont(ofSize: 16)
        textFieldPassword.layer.cornerRadius = 26
        textFieldPassword.backgroundColor = .white
        
        return textFieldPassword
    }()
    
    private lazy var buttonLogin: UIButton = {
        let buttonLogin = UIButton()
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.layer.cornerRadius = 26
        buttonLogin.backgroundColor = .systemBlue
        
        return buttonLogin
    }()
    
    private lazy var buttonFacebook: UIButton = {
        let buttonFacebook = UIButton()
        buttonFacebook.setTitle("Facebook", for: .normal)
        buttonFacebook.layer.cornerRadius = 26
        buttonFacebook.backgroundColor = .systemBlue
        
        return buttonFacebook
    }()
    
    private lazy var buttonTwitter: UIButton = {
        let buttonTwitter = UIButton()
        buttonTwitter.setTitle("Twitter", for: .normal)
        buttonTwitter.layer.cornerRadius = 26
        buttonTwitter.backgroundColor = .systemBlue
        
        return buttonTwitter
    }()
    
    //MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

