//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by dev-mac on 2018/10/14.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myLeftButton: UIBarButtonItem!
    private var myRightButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.cyan
        
        self.title = "My Navigation"
        
        myLeftButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(onClickMyButton(sender:)))
        
        myRightButton = UIBarButtonItem(title: "RightBtn", style: .plain, target: self, action: #selector(onClickMyButton(sender:)))
        
        myLeftButton.tag = 1
        myRightButton.tag = 2
        
        self.navigationItem.leftBarButtonItem = myLeftButton
        self.navigationItem.rightBarButtonItem = myRightButton
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func onClickMyButton(sender: UIButton) {
        switch (sender.tag) {
        case 1:
            self.view.backgroundColor = UIColor.blue
        case 2:
            self.view.backgroundColor = UIColor.red
        default:
            print("error")
        }
    }
    
}
