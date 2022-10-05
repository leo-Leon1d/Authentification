//
//  ViewController.swift
//  Authentification
//
//  Created by Леонид Исраелян on 04.08.2022.
//

import UIKit

fileprivate let mainColor = UIColor(red: 186/255, green: 216/255, blue: 233/255, alpha: 1)
fileprivate let mainPurple = UIColor(red: 139/255, green: 112/255, blue: 212/255, alpha: 1)
fileprivate let mainYellow = UIColor(red: 242/255, green: 216/255, blue: 152/255, alpha: 1)

class ViewController: UIViewController {
    
    var imageView = UIImageView()
    var userNameTf = UITextField()
    var passwordTf = UITextField()
    var setupButton = UIButton()
    var bottomLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = mainColor
        setup()
    }
    
    
    private func setupImageView() {
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Avatar")
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
            imageView.widthAnchor.constraint(equalToConstant: 192),
            imageView.heightAnchor.constraint(equalToConstant: 192)
        ])
    }
    
    private func setupUserNameTf() {
        view.addSubview(userNameTf)
        userNameTf.translatesAutoresizingMaskIntoConstraints = false
        userNameTf.layer.cornerRadius = 20
        userNameTf.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                                               NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16)])
        userNameTf.backgroundColor = mainPurple
        userNameTf.textAlignment = .center
        
        NSLayoutConstraint.activate([
            userNameTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 39),
            userNameTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -39),
            userNameTf.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 58),
            userNameTf.heightAnchor.constraint(equalToConstant: 57)
        ])
    }
    
    private func setupPasswordTf() {
        view.addSubview(passwordTf)
        passwordTf.layer.cornerRadius = 20
        passwordTf.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                                               NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16)])
        
        passwordTf.backgroundColor = mainPurple
        passwordTf.textAlignment = .center
        passwordTf.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 39),
            passwordTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -39),
            passwordTf.topAnchor.constraint(equalTo: userNameTf.bottomAnchor, constant: 23),
            passwordTf.heightAnchor.constraint(equalToConstant: 57)
        ])
    }
    
    private func setupSignInButton() {
        view.addSubview(setupButton)
        setupButton.translatesAutoresizingMaskIntoConstraints = false
        setupButton.layer.cornerRadius = 20
        setupButton.setTitle("Sign In", for: .normal)
        setupButton.backgroundColor = .white
        setupButton.titleLabel?.textColor = mainYellow
        setupButton.titleLabel?.font = .systemFont(ofSize: 16)
        setupButton.addTarget(self, action: #selector(openSMS), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            setupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 107),
            setupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -107),
            setupButton.bottomAnchor.constraint(equalTo: bottomLabel.topAnchor, constant: -66),
            setupButton.heightAnchor.constraint(equalToConstant: 57)
        ])
    }
    
    private func setupBottomLabel() {
        view.addSubview(bottomLabel)
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.textAlignment = .center
        bottomLabel.text = "Check out the offer agreement. By registering or logging in, you accept its terms."
        bottomLabel.textColor = .black
        bottomLabel.font = .systemFont(ofSize: 8)
        bottomLabel.numberOfLines = 2
        
        NSLayoutConstraint.activate([
            bottomLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            bottomLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            bottomLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -13)
        ])
    }
    
    private func setup() {
        setupImageView()
        setupUserNameTf()
        setupPasswordTf()
        setupBottomLabel()
        setupSignInButton()
    }
    
    @objc func openSMS() {
        if let userText = userNameTf.text, !userText.isEmpty, let passwordText = passwordTf.text, !passwordText.isEmpty {
            
        let vc = EnterCodeVC()
//        self.present(vc, animated: true, completion: nil)
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
}

