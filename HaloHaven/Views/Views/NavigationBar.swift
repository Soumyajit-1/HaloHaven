//
//  NavigationBar.swift
//  HaloHaven
//
//  Created by BIT3016 on 05/03/24.
//

import UIKit

class NavigationBar: UIView {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var backBtn: UIButton!

    var currentNavController: UINavigationController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    @IBAction func backBtn(_ sender: UIButton){
        currentNavController?.popViewController(animated: true)
    }
    
}
