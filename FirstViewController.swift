//
//  FirstViewController.swift
//  UIKit Tutorial
//
//  Created by dev-mac on 2018/10/14.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        
        self.view.backgroundColor = UIColor.cyan
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
