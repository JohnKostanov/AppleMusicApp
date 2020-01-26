//
//  Nib.swift
//  AppleMusicApp
//
//  Created by  Джон Костанов on 26/01/2020.
//  Copyright © 2020 John Kostanov. All rights reserved.
//

import UIKit


extension UIView {
    
    class func loadFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
    
}
