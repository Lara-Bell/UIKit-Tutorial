//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by lara-bell on 2018/10/13.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit
import UserNotifications

@available(iOS 10.0, *)
class ViewController: UIViewController {
    
    private let BUTTON_NORMAL: Int = 1
    private let BUTTON_FIRE: Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Notificationの表示許可をもらう
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            
        }
        
        // ボタン
        let buttonWidth: CGFloat = 200
        let buttonHeight: CGFloat = 80
        let posX: CGFloat = (self.view.bounds.width - buttonWidth) / 2
        let posY: CGFloat = 200
        
        let myButton: UIButton = UIButton(frame: CGRect(x: posX, y: posY, width: buttonWidth, height: buttonHeight))
        myButton.backgroundColor = UIColor.orange
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20.0
        myButton.tag = BUTTON_NORMAL
        myButton.setTitle("Notification", for: .normal)
        myButton.addTarget(self, action: #selector(onClickMyButton(sender:)), for: .touchDown)
        view.addSubview(myButton)
        
        // ボタン
        let posFireX: CGFloat = (self.view.bounds.width - buttonWidth) / 2
        let posFireY: CGFloat = 400
        
        let myFireButton: UIButton = UIButton(frame: CGRect(x: posFireX, y: posFireY, width: buttonWidth, height: buttonHeight))
        myFireButton.backgroundColor = UIColor.blue
        myFireButton.layer.masksToBounds = true
        myFireButton.layer.cornerRadius = 20.0
        myFireButton.tag = BUTTON_FIRE
        myFireButton.setTitle("Fire Notification", for: .normal)
        myFireButton.addTarget(self, action: #selector(onClickMyButton(sender:)), for: .touchDown)
        view.addSubview(myFireButton)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc internal func onClickMyButton(sender: UIButton) {
        print("onClickMyButton")
        if sender.tag == BUTTON_NORMAL {
            showNotification()
        } else if sender.tag == BUTTON_FIRE {
            showNotificationFire()
        }
    }
    
    @available(iOS 10.0, *)
    private func showNotification() {
        print("showNotificatione")
        
        // Notificationを生成
        let content = UNMutableNotificationContent()
        
        // Titleを代入する
        content.title = "Title1"
        
        // Bodyを代入する
        content.body = "Hello ShowNotification"
        
        // 音を設定する
        content.sound = UNNotificationSound.default
        
        // Requestを生成する
        let request = UNNotificationRequest.init(identifier: "Titile1", content: content, trigger: nil)
        
        // Notificationを発行する
        let center = UNUserNotificationCenter.current()
        center.add(request) { (error) in
            print(error as Any)
        }
    }
    
    /*
     Notificationを表示(10秒後)
     */
    @available(iOS 10.0, *)
    private func showNotificationFire() {
        
        print("showNotificationFire")
        
        // Notificationを生成
        let content = UNMutableNotificationContent()
        
        // Titleを代入する
        content.title = "Title2"
        
        // Bodyを代入する
        content.body = "Hello ShowNotificationFire"
        
        // 音を設定する
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 5, repeats: false)
        
        // Requestを生成する
        let request = UNNotificationRequest.init(identifier: "Titile2", content: content, trigger: trigger)
        
        // Notificationを発行する
        let center = UNUserNotificationCenter.current()
        center.add(request) { (error) in
            print(error as Any)
        }
    }
    
}

