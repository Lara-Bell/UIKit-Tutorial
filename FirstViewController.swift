//
//  FirstViewController.swift
//  UIKit Tutorial
//
//  Created by dev-mac on 2018/10/14.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Controllerのタイトルを設定する
        self.title = "My First View"
        
        // Viewの背景色をCyanに設定する
        self.view.backgroundColor = UIColor.cyan
        
        //ボタンの定義を行う
        let buttonWidth: CGFloat = 100
        let buttonHeight: CGFloat = 50
        let posX: CGFloat = (self.view.bounds.width - buttonWidth) / 2
        let posY: CGFloat = 200
        let myButton = UIButton(frame: CGRect(x: posX, y: posY, width: buttonWidth, height: buttonHeight))
        myButton.backgroundColor = UIColor.orange
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20.0
        myButton.setTitle("ボタン", for: .normal)
        myButton.addTarget(self, action: #selector(onClickMyButton(sender:)), for: .touchUpInside)
        
        // ボタンを追加
        self.view.addSubview(myButton)
        
    }
    
    @objc internal func onClickMyButton(sender: UIButton) {
        
        // 移動先のViewを定義
        let secondViewController = SecondViewController()
        
        // SecondViewに移動する
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
