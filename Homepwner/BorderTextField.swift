//
//  BorderTextField.swift
//  Homepwner
//
//  Created by David Burke on 7/17/17.
//  Copyright © 2017 amberfire. All rights reserved.
//

import UIKit

class BorderTextField: UITextField {
 
    override func becomeFirstResponder() -> Bool {
        super.becomeFirstResponder()
        self.borderStyle = .bezel
        return true
    }
    
    override func resignFirstResponder() -> Bool {
        super.resignFirstResponder()
        self.borderStyle = .roundedRect
        return true
    }
    
}
