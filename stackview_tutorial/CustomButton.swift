//
//  CustomButton.swift
//  stackview_tutorial
//
//  Created by 김동환 on 2021/04/14.
//

import Foundation
import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        
        didSet{
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = cornerRadius > 0
        }
        
    }
}
