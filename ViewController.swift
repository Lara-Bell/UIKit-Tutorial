//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by lara-bell on 2018/10/13.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Buttonを生成する
        myButton = UIButton()
        
        // ボタンのサイズ
        let bWidth: CGFloat = 200
        let bHeight: CGFloat = 50
        
        // ボタンのX,Y座標
        let posX: CGFloat = self.view.bounds.width / 2 - bWidth / 2
        let posY: CGFloat = self.view.bounds.height / 2 - bHeight / 2
        
        // ボタンの設置座標とサイズを設定する
        myButton.frame = CGRect(x: posX, y: posY, width: bWidth, height: bHeight)
        
        // UILabelの背景をオレンジ色に
        myButton.backgroundColor = UIColor.red
        
        // ボタンの枠を丸くする
        myButton.layer.masksToBounds = true
        
        // コーナーの半径を設定する
        myButton.layer.cornerRadius = 20.0
        
        // タイトルを設定する（通常）
        myButton.setTitle("ボタン(通常)", for: .normal)
        myButton.setTitleColor(UIColor.white, for: .normal)
        
        // タイトルを設定する（ボタンがハイライトされた時）
        myButton.setTitle("ボタン(押された)", for: .highlighted)
        myButton.setTitleColor(UIColor.black, for: .highlighted)
        
        // ボタンにタグを付ける
        myButton.tag = 1
        
        // イベントを追加する
        myButton.addTarget(self, action: #selector(ViewController.onclickMyButton(sender:)), for: .touchUpInside)
        
        // ViewにLabelを追加
        self.view.addSubview(myButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc internal func onclickMyButton(sender: UIButton) {
        print("onClickMyButton:")
        print("sender.currentTitle: \(sender.currentTitle)")
        print("sender.tag: \(sender.tag)")
    }

}

