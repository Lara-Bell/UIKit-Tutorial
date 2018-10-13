//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by lara-bell on 2018/10/13.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    private var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // WebViewの生成
        myWebView = UIWebView()
        
        // Deletegateを自身に設定
        myWebView.delegate = self
        
        // WebViewのサイズを設定
        myWebView.frame = self.view.bounds
        
        // URLを設定
        let url: URL = URL(string: "https://lara-bell.com")!
        
        // リクエスト発行
        let request: NSURLRequest = NSURLRequest(url: url)
        
        // リクエストを発行する
        myWebView.loadRequest(request as URLRequest)
        
        // Viewに追加する
        self.view.addSubview(myWebView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
     Pageが初めて読み終わったら呼ばれる
     */
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("webViewDidStartLoad")
    }
    
    /*
     PageがLoadされ始めたときに呼ばれる
     */
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("webViewDidStartLoad")
    }
}

