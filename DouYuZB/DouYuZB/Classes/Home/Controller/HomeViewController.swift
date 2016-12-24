//
//  HomeViewController.swift
//  DouYuZB
//
//  Created by yzz on 16/12/24.
//  Copyright © 2016年 yzz. All rights reserved.
//

import UIKit

fileprivate let kTitleViewH:CGFloat = 40;

class HomeViewController: UIViewController {

    fileprivate lazy var pageTitleView:PageTitleView = {
        let titleFrame = CGRect(x: 0, y:kStatusBarH + kNavigationBarH, width: kScreenW, height: kTitleViewH);
        let titles = ["推荐","游戏","娱乐","趣玩"];
        let titleView = PageTitleView(frame: titleFrame, titles: titles);
        titleView.backgroundColor = UIColor.red;
        return titleView;
    }();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


// MARK:--设置UI界面
extension HomeViewController{
    
    fileprivate func setupUI(){
        setupNavigationBar();
        view.addSubview(pageTitleView);
    }
    
    private func setupNavigationBar(){
        let leftButton = UIButton();
        leftButton.setImage(UIImage(named: "logo"), for: .normal);
        leftButton.sizeToFit();
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftButton);
        
        let size = CGSize(width: 40, height: 40);
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size);
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size);
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size);
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem];
        
    }
}
