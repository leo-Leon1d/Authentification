//
//  PersonalCabinetVC.swift
//  Authentification
//
//  Created by Леонид Исраелян on 02.10.2022.
//

import UIKit

class PersonalCabinetVC: UIViewController {

    let headerView = TopView()
    
    let nameText = UILabel()
    let nameSubText = UILabel()
    let birthText = UILabel()
    let birthSubText = UILabel()
    let mailText = UILabel()
    let mailSubText = UILabel()
    
    let nameTF = UITextField()
    let birthTF = UITextField()
    let mailTF = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
            
        setup()
    }
    
    private func setup() {
        setupTopView()
        
        name()
        nameSub()
        nameTextField()
        
        birth()
        birthSub()
        birthTextField()
        
        mail()
        mailSub()
//        mailTextField()
    }
    
    private func setupTopView() {
        view.addSubview(headerView)
        headerView.headerText = "Контакты"
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    private func name() {
        view.addSubview(nameText)
        nameText.text = "Как вас зовут?"
        nameText.translatesAutoresizingMaskIntoConstraints = false
        nameText.textColor = .black
        nameText.font = .boldSystemFont(ofSize: 16)
        NSLayoutConstraint.activate([
            nameText.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 16),
            nameText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            nameText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }
    
    private func nameSub() {
        view.addSubview(nameSubText)
        nameSubText.text = "Будем обращаться к вам по имени"
        nameSubText.translatesAutoresizingMaskIntoConstraints = false
        nameSubText.textColor = .black
        nameSubText.font = .systemFont(ofSize: 14)
        NSLayoutConstraint.activate([
            nameSubText.topAnchor.constraint(equalTo: nameText.bottomAnchor, constant: 4),
            nameSubText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            nameSubText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }
    
    private func nameTextField() {
        view.addSubview(nameTF)
        nameTF.translatesAutoresizingMaskIntoConstraints = false
        nameTF.layer.cornerRadius = 16
        nameTF.attributedPlaceholder = NSAttributedString(string: "Имя", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray,
                                                                                               NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)])
        
        nameTF.backgroundColor = .systemGray5
        nameTF.textAlignment = .center
        NSLayoutConstraint.activate([
            nameTF.topAnchor.constraint(equalTo: nameSubText.bottomAnchor, constant: 16),
            nameTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            nameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            nameTF.heightAnchor.constraint(equalToConstant: 67)
        ])
    }

    private func birth() {
        view.addSubview(birthText)
        birthText.text = "Дата рождения"
        birthText.translatesAutoresizingMaskIntoConstraints = false
        birthText.textColor = .black
        birthText.font = .boldSystemFont(ofSize: 16)
        NSLayoutConstraint.activate([
            birthText.topAnchor.constraint(equalTo: nameTF.bottomAnchor, constant: 16),
            birthText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            birthText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }
    
    private func birthSub() {
        view.addSubview(birthSubText)
        birthSubText.text = "Именниникам от нас подарок!"
        birthSubText.translatesAutoresizingMaskIntoConstraints = false
        birthSubText.textColor = .black
        birthSubText.font = .systemFont(ofSize: 14)
        NSLayoutConstraint.activate([
            birthSubText.topAnchor.constraint(equalTo: birthText.bottomAnchor, constant: 4),
            birthSubText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            birthSubText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }
    
    private func birthTextField() {
        view.addSubview(birthTF)
        birthTF.translatesAutoresizingMaskIntoConstraints = false
        birthTF.layer.cornerRadius = 16
        birthTF.attributedPlaceholder = NSAttributedString(string: "ДД.ММ.ГГГГ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray,
                                                                                               NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)])
        
        birthTF.backgroundColor = .systemGray5
        birthTF.textAlignment = .center
        NSLayoutConstraint.activate([
            birthTF.topAnchor.constraint(equalTo: birthSubText.bottomAnchor, constant: 16),
            birthTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            birthTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            birthTF.heightAnchor.constraint(equalToConstant: 67)
        ])
    }
    
    private func mail() {
        view.addSubview(mailText)
        mailText.text = "Почта"
        mailText.translatesAutoresizingMaskIntoConstraints = false
        mailText.textColor = .black
        mailText.font = .boldSystemFont(ofSize: 16)
        NSLayoutConstraint.activate([
            mailText.topAnchor.constraint(equalTo: birthTF.bottomAnchor, constant: 16),
            mailText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            mailText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }
    
    private func mailSub() {
        /*
        view.addSubview(mailSubText)
        nameSubText.text = "Будем присылать самые важные новости"
        nameSubText.translatesAutoresizingMaskIntoConstraints = false
        nameSubText.textColor = .black
        nameSubText.font = .systemFont(ofSize: 14)
        NSLayoutConstraint.activate([
            nameSubText.topAnchor.constraint(equalTo: mailText.bottomAnchor, constant: 4),
            nameSubText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            nameSubText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
 */
        let redView = UIView()
        redView.backgroundColor = .red
        view.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            redView.topAnchor.constraint(equalTo: mailText.bottomAnchor),
            redView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func mailTextField() {
        view.addSubview(mailTF)
        mailTF.translatesAutoresizingMaskIntoConstraints = false
        mailTF.layer.cornerRadius = 16
        mailTF.attributedPlaceholder = NSAttributedString(string: "name@mail.ru", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray,
                                                                                               NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24)])
        
        mailTF.backgroundColor = .systemGray5
        mailTF.textAlignment = .center
        NSLayoutConstraint.activate([
            mailTF.topAnchor.constraint(equalTo: mailSubText.bottomAnchor, constant: 16),
            mailTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            mailTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            mailTF.heightAnchor.constraint(equalToConstant: 67)
        ])
    }

}
