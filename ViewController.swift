//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by lara-bell on 2018/10/13.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // サイズ設定
        let iWidth: CGFloat = 300
        let iHeight: CGFloat = 100
        
        // x, y を設定
        let posX: CGFloat = (self.view.bounds.width - iWidth) /  2
        let posY: CGFloat = (self.view.bounds.height - iHeight) / 2
            
        // UIImageView作成
        myImageView = UIImageView(frame: CGRect(x: posX, y: posY, width: iWidth, height: iHeight))
        
        // UIImage作成
        let myImage: UIImage = UIImage(named: "sample")!
        
        // UIImageViewに画像を設定
        myImageView.image = myImage
        
        // viewに追加
        self.view.addSubview(myImageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

