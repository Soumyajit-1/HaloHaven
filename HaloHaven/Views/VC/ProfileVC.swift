//
//  ProfileVC.swift
//  HaloHaven
//
//  Created by BIT3016 on 07/03/24.
//

import UIKit

class ProfileVC: BaseVC {
    @IBOutlet  var optionsView: UIView!
    @IBOutlet  var nameLabel: UILabel!
    
    
    var name: String = "nil"{
        didSet{
            self.nameLabel.text = name
        }
    }
    
    var isOptionsViewHidden = true{
        didSet{
            updateUI()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavBar()
    }
    
    func setUpNavBar(){
        navBar.title.text = "My Profile"
        navBar.backBtn.isHidden = true
    }

    func updateUI(){
        if isOptionsViewHidden{
            optionsView.isHidden = true
        }else{
            optionsView.isHidden = false
        }
        
    }
    

}
