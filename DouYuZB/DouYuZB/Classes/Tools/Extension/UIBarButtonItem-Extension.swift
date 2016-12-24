//
//  UIBarButtonItem-Extension.swift
//  DouYuZB
//
//  Created by yzz on 16/12/24.
//  Copyright © 2016年 yzz. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(imageName:String,highImageName:String,size:CGSize) {
        let button = UIButton();
        button.setImage(UIImage.init(named: imageName), for: .normal);
        button.setImage(UIImage.init(named: highImageName), for: .highlighted);
        button.frame = CGRect(origin: CGPoint.zero, size: size);
        self.init(customView:button);
    }
}

