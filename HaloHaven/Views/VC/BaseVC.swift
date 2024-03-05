//
//  BaseVC.swift
//  HaloHaven
//
//  Created by BIT3016 on 05/03/24.
//

import UIKit

class BaseVC: UIViewController {
    
    var navBar : NavigationBar! = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        navBar = loadNavigationBar()
        
        view.addSubview(navBar)
        navBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBar.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
    }
    
    func loadNavigationBar() -> NavigationBar {
        let nib = UINib(nibName: "NavigationBar", bundle: nil)
        guard let navBar = nib.instantiate(withOwner: self, options: nil).first as? NavigationBar else {
            fatalError("Could not load CustomNavigationBarView from the XIB.")
        }
        return navBar
    }

    

}
