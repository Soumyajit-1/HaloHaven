//
//  CustomTabBarHelper.swift
//  Test_Go_Food
//
//  Created by BIT3016 on 28/02/24.
//
import Foundation
import UIKit

class CustomTabBar : UITabBar{
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 80
        return sizeThatFits
    }
}
