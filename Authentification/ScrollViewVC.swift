//
//  ScrollViewVC.swift
//  Authentification
//
//  Created by Леонид Исраелян on 10.08.2022.
//

import UIKit

class ScrollViewVC: UIViewController {
    
    var scrollView = UIScrollView()
    var mainView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func setupScrollView() {
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        mainView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        scrollView.addSubview(mainView)
        scrollView.backgroundColor = .white
        mainView.backgroundColor = .white
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        setupViews()
        
        let heightConstraint = mainView.heightAnchor.constraint(equalTo: view.heightAnchor)
        heightConstraint.priority = .defaultLow
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            view.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            mainView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor),
            mainView.widthAnchor.constraint(equalTo: view.widthAnchor),
            heightConstraint
        ])
        
    }
    
    private func setupViews() {
        
    }
    
}
