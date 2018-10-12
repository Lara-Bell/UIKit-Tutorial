//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by lara-bell on 2018/10/13.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myInfoDarkButton: UIButton!
    private var myInfoLightButton: UIButton!
    private var myAddButton: UIButton!
    private var myDetailButton: UIButton!
    private var mySystemButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンを生成する
        myInfoDarkButton = UIButton(type: .infoDark)
        myInfoLightButton = UIButton(type: .infoLight)
        myAddButton = UIButton(type: .contactAdd)
        myDetailButton = UIButton(type: .detailDisclosure)
        mySystemButton = UIButton(type: .system)
        
        // ボタンの位置を指定する
        let posX: CGFloat = self.view.frame.width / 2
        myInfoDarkButton.layer.position = CGPoint(x: posX, y: 50)
        myInfoLightButton.layer.position = CGPoint(x: posX, y: 100)
        myAddButton.layer.position = CGPoint(x: posX, y: 150)
        myDetailButton.layer.position = CGPoint(x: posX, y: 200)
        
        // Systemｐボタンのサイズ
        let sWidth: CGFloat = 200
        let sHeight: CGFloat = 50
        
        // Systemボタンを配置するx y座標
        let sposX: CGFloat = self.view.frame.width / 2 - sWidth / 2
        let sposY: CGFloat = 250
            
        // ボタンの設置座標とサイズを設定する
        mySystemButton.frame = CGRect(x: sposX, y: sposY, width: sWidth, height: sHeight)
        
        // Systemボタンにタイトルを設定する
        mySystemButton.setTitle("MySystemButton", for: .normal)
        
        // タグを設定する
        myInfoDarkButton.tag = 1
        myInfoLightButton.tag = 2
        myAddButton.tag = 3
        myDetailButton.tag = 4
        mySystemButton.tag = 5
        
        // イベントを追加する
        myInfoDarkButton.addTarget(self, action: #selector(ViewController.onclickMyButton(sender:)), for: .touchDown)
        myInfoLightButton.addTarget(self, action: #selector(ViewController.onclickMyButton(sender:)), for: .touchDown)
        myAddButton.addTarget(self, action: #selector(ViewController.onclickMyButton(sender:)), for: .touchDown)
        myDetailButton.addTarget(self, action: #selector(ViewController.onclickMyButton(sender:)), for: .touchDown)
        mySystemButton.addTarget(self, action: #selector(ViewController.onclickMyButton(sender:)), for: .touchDown)
        
        // ViewにLabelを追加
        self.view.addSubview(myInfoDarkButton)
        self.view.addSubview(myInfoLightButton)
        self.view.addSubview(myAddButton)
        self.view.addSubview(myDetailButton)
        self.view.addSubview(mySystemButton)
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

