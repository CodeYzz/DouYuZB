//
//  MainViewController.swift
//  DouYuZB
//
//  Created by yzz on 16/12/24.
//  Copyright © 2016年 yzz. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildController(storyboardName: "Home");
        addChildController(storyboardName: "Live");
        addChildController(storyboardName: "Follow");
        addChildController(storyboardName: "Profile");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func addChildController(storyboardName:String){
        let childVC = UIStoryboard(name: storyboardName, bundle:
            nil).instantiateInitialViewController()!;
        addChildViewController(childVC);
    }

}
