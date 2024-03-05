//
//  ViewController.swift
//  HaloHaven
//
//  Created by Soumyajit Pal on 05/03/24.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - General Button Action
    @IBAction func signInBtnTapped(_ sender: UIButton){
        let vc = TabBarController()
        UIApplication.shared.currentUIWindow()?.rootViewController = vc
    }

}

