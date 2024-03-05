//
//  HaloButton.swift
//  HaloHaven
//
//  Created by BIT3016 on 05/03/24.
//

import Foundation
import UIKit

@IBDesignable
class HaloButton : UIButton {
    
    // Border color property
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
            updateButtonType()
        }
    }
    
    //custom Corner radius property
    @IBInspectable var customCornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = customCornerRadius
            updateButtonType()
        }
    }
    
    // Border width property
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
            updateButtonType()
        }
    }
    
    
    // Initialize the button
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    // Initialize from storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // Setup the button appearance
    private func setup() {
        updateButtonType()
        clipsToBounds = true
    }
    
    // Update button type based on property
    private func updateButtonType() {
        layer.cornerRadius = (customCornerRadius == 0) ? frame.height / 2 : customCornerRadius
    }
}
