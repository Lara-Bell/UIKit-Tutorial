//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by lara-bell on 2018/10/13.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    private var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // x,yｎと幅の高さを設定
        let tWidth: CGFloat = 200
        let tHeight: CGFloat = 30
        let posX: CGFloat = (self.view.bounds.width - tWidth) /  2
        let posY: CGFloat = (self.view.bounds.height - tHeight) / 2
            
        // UITextFieldを作成
        myTextField = UITextField(frame: CGRect(x: posX, y: posY, width: tWidth, height: tHeight))
        
        // 表示するテキストを代入
        myTextField.text = "Hello TextField"
        
        // Delegateを自身に設定する
        myTextField.delegate = self
        
        // 枠を表示する
        myTextField.borderStyle = .roundedRect
        
        // クリアボタンを追加
        myTextField.clearButtonMode = .whileEditing
        
        // viewに追加
        self.view.addSubview(myTextField)
    }
    
    /*
     UITextFieldが編集された直前に呼ばれる
     カーソルが表示されたタイミング
     */
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing: \(textField.text!)")
    }

    
    /*
     UITextFieldが編集された直後に呼ばれる
     */
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing: \(textField.text!)")
    }
    
    /*
     改行ボタンが押された際に呼ばれる
     */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn: \(textField.text!)")
        
        // 改行ボタンが押されたらKeyboardを閉じる処理
        textField.resignFirstResponder()
        
        return true
    }
    
    
}

