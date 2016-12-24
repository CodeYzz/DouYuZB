//
//  PageTitleView.swift
//  DouYuZB
//
//  Created by yzz on 16/12/24.
//  Copyright © 2016年 yzz. All rights reserved.
//

import UIKit

class PageTitleView: UIView {

    // MARK:--定义属性
    private var titles:[String];
    init(frame: CGRect,titles:[String]) {
        self.titles = titles;
        super.init(frame: frame);
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
