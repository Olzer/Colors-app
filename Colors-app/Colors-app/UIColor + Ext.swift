//
//  UIColor + Ext.swift
//  Colors-app
//
//  Created by Oleg Dorozhovets on 16/11/2022.
//

import UIKit

extension UIColor {
    
   static func random() -> UIColor {
        
        let randomColor = UIColor(red  : CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue : CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
