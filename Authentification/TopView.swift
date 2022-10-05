//
//  TopView.swift
//  Authentification
//
//  Created by Леонид Исраелян on 02.10.2022.
//

import UIKit

class TopView: UIView {
    
    private var leadingImage = UIImageView()
    private var trailingImage = UIImageView()
    private var header = UILabel()
    
    var headerText: String? {
        didSet {
            self.header.text = headerText
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupTopView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTopView() {
        setupLeadingImage()
        setupHeader()
        setupTrailingImage()
    }
    
    private func setupLeadingImage() {
        leadingImage.image = UIImage(named: "Back")
        self.addSubview(leadingImage)
        leadingImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            leadingImage.heightAnchor.constraint(equalToConstant: 28),
            leadingImage.widthAnchor.constraint(equalToConstant: 28),
            leadingImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            leadingImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            leadingImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16)
        ])
    }
    
    private func setupTrailingImage() {
        trailingImage.image = UIImage(named: "Close")
        self.addSubview(trailingImage)
        trailingImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            trailingImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            trailingImage.centerYAnchor.constraint(equalTo: leadingImage.centerYAnchor)
        ])
    }
    
    private func setupHeader() {
        self.addSubview(header)
        header.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            header.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            header.centerYAnchor.constraint(equalTo: leadingImage.centerYAnchor)
        ])
    }
    
}
