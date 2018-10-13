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
        
        // 小さめのフォントの文字列をラベルに表示する
        let mySmallLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 0, width: 300, height: 150))
        mySmallLabel.text = "小さめのフォント"
        mySmallLabel.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        self.view.addSubview(mySmallLabel)
        
        // Systemの標準のフォントサイズの文字列をラベルを表示する
        let myNormalLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 30, width: 200, height: 150))
        myNormalLabel.text = "System標準のフォントサイズ"
        myNormalLabel.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        self.view.addSubview(myNormalLabel)
        
        // UIButton用のフォントサイズの文字列をラベルに表示する
        let myButtonLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 60, width: 300, height: 150))
        myButtonLabel.text = "UIButtonのフォントサイズ"
        myButtonLabel.font = UIFont.systemFont(ofSize: UIFont.buttonFontSize)
        self.view.addSubview(myButtonLabel)
        
        // カスタムしたフォントサイズ(20)の文字列をラベルに表示する
        let myCustomLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 90, width: 300, height: 150))
        myCustomLabel.text = "ポイント20のフォントサイズ"
        myCustomLabel.font = UIFont.systemFont(ofSize: CGFloat(20))
        self.view.addSubview(myCustomLabel)
        
        // Italic System Fontの文字列をラベルに表示する
        let myItalicLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 150, width: 300, height: 150))
        myItalicLabel.text = "Italicのフォント"
        myItalicLabel.font = UIFont.italicSystemFont(ofSize: UIFont.labelFontSize)
        self.view.addSubview(myItalicLabel)
        
        // Boldの文字列をラベルに表示する
        let myBoldLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 180, width: 300, height: 150))
        myBoldLabel.text = "Boldフォント"
        myBoldLabel.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        self.view.addSubview(myBoldLabel)
        
        // Arialの文字列をラベルに表示する
        let myArialLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 230, width: 300, height: 150))
        myArialLabel.text = "ArialHebrew"
        myArialLabel.font = UIFont(name: "ArialHebrew", size: UIFont.labelFontSize)
        self.view.addSubview(myArialLabel)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

