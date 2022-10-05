//
//  EnterCodeVC.swift
//  Authentification
//
//  Created by Леонид Исраелян on 06.08.2022.
//

import UIKit

fileprivate let mainViolet = UIColor(red: 139/255, green: 112/255, blue: 212/255, alpha: 1)
fileprivate let mainSunny = UIColor(red: 242/255, green: 216/255, blue: 152/255, alpha: 1)
fileprivate let lowMainSunny = UIColor(red: 242/255, green: 216/255, blue: 152/255, alpha: 0.6)
fileprivate let lowBlack = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)

class EnterCodeVC: UIViewController {
    
    var stackView = UIStackView()
    var smsCode = UILabel()
    var continueButton = UIButton()
    var codes: [UITextField] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = mainViolet
        setupStack()
        setupSmsLabel()
        setupContinueButton()
    }
    
    private func setupStack() {
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 4
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 9),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -9),
            stackView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -60)
        ])
        
        for _ in 1...4 {
            let textField = UITextField()
            textField.keyboardType = .numberPad
            textField.delegate = self
            textField.font = .systemFont(ofSize: 40, weight: .semibold)
            textField.textColor = .white
            textField.textAlignment = .center
            textField.layer.cornerRadius = 16
            textField.borderStyle = .roundedRect
            textField.backgroundColor = .clear
            textField.layer.borderWidth = 1
            textField.layer.borderColor = lowBlack.cgColor
            textField.translatesAutoresizingMaskIntoConstraints = false
            codes.append(textField)
            textField.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
            
            NSLayoutConstraint.activate([
                textField.heightAnchor.constraint(equalTo: textField.widthAnchor)
            ])
            stackView.addArrangedSubview(textField)
        }
        
    }
    
    private func setupSmsLabel() {
        view.addSubview(smsCode)
        smsCode.translatesAutoresizingMaskIntoConstraints = false
        smsCode.textAlignment = .center
        smsCode.text = "Введите код СМС"
        smsCode.textColor = .white
        smsCode.font = .systemFont(ofSize: 24)
        
        NSLayoutConstraint.activate([
            smsCode.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 13),
            smsCode.leadingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: 99),
            smsCode.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -103)
        ])
    }
    
    private func setupContinueButton() {
        view.addSubview(continueButton)
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.layer.cornerRadius = 20
        continueButton.setTitle("Continue", for: .normal)
        continueButton.backgroundColor = lowMainSunny
        continueButton.titleLabel?.textColor = .white
        continueButton.titleLabel?.font = .systemFont(ofSize: 16)
        continueButton.addTarget(self, action: #selector(continueButtonAction), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 59),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -59),
            continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -64),
            continueButton.heightAnchor.constraint(equalToConstant: 57)
        ])
    }
    
    @objc func continueButtonAction() {
        let vc = PersonalCabinetVC()
//        self.present(vc, animated: true, completion: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func textFieldDidChange(textField: UITextField) {
        
        if textField.text?.count == 1 {
            let remaining = codes.filter { $0.text?.count == 0 }
            if remaining.count > 0 {
                remaining[0].becomeFirstResponder()
            } else {
                codes.forEach { $0.resignFirstResponder() }
                continueButton.backgroundColor = mainSunny
                continueButton.isUserInteractionEnabled = true
            }
        } else {
            continueButton.backgroundColor = lowMainSunny
            continueButton.isUserInteractionEnabled = false
        }
        
    }
    
}

extension EnterCodeVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
