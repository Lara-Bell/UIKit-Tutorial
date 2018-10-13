//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by lara-bell on 2018/10/13.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Viewの背景をCyanに設定する
        self.view.backgroundColor = UIColor.cyan
        
        // Buttonの定義する
        let myButton: UIButton = UIButton()
        let buttonWidth: CGFloat = 200
        let buttonHeight: CGFloat = 40
        let posX: CGFloat = (self.view.bounds.width - buttonWidth) / 2
        let posY: CGFloat = 200
        myButton.frame = CGRect(x: posX, y: posY, width: buttonWidth, height: buttonHeight)
        myButton.backgroundColor = UIColor.red
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20.0
        myButton.setTitle("UIAlertを発動", for: .normal)
        myButton.setTitleColor(UIColor.white, for: .normal)
        myButton.addTarget(self, action: #selector(onClickMyButton(sender:)), for: .touchDown)
        
        // Viewに追加する
        self.view.addSubview(myButton)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
     ボタンイベント
     */
    @objc internal func onClickMyButton(sender: UIButton) {
        
        // UIAlertControllerを作成する
        let myAlert: UIAlertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .alert)
        
        // OKのactionを作成する
        let myOkAction = UIAlertAction(title: "OK", style: .default) { (action) in
            // OKボタン押された後の処理
            print("Action OK!")
        }
        
        // OKのActionを追加する
        myAlert.addAction(myOkAction)
        
        // UIAlertを発動する
        present(myAlert, animated: true, completion: nil)
    }
    
    
}

