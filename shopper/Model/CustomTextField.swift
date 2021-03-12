//
//  CustomTextField.swift
//  shopper
//
//  Created by Bintang Aria Ramadhan on 12/03/21.
//  Copyright © 2021 Starfreak. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let customPlaceHolder = NSAttributedString(string: p, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
            attributedPlaceholder = customPlaceHolder
            textColor = .white
        }
    }
}

