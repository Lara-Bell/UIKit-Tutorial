//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by dev-mac on 2018/10/14.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    private var pageControl: UIPageControl!
    private var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let width = self.view.frame.maxX, height = self.view.frame.maxY
        
        // スクロールページ
        self.view.backgroundColor = UIColor.cyan
        scrollView = UIScrollView(frame: self.view.frame)
        let pageSize = 4
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: CGFloat(pageSize) * width, height: 0)
        self.view.addSubview(scrollView)
        
        // 各ページのLabel表示(Page数字)
        for i in 0 ..< pageSize {
            let myLabel: UILabel = UILabel(frame: CGRect(x: CGFloat(i) * width + width / 2 - 40, y: height / 2 - 40, width: 80, height: 80))
            myLabel.backgroundColor = UIColor.black
            myLabel.textColor = UIColor.white
            myLabel.textAlignment = NSTextAlignment.center
            myLabel.layer.masksToBounds = true
            myLabel.text = "Page\(i)"
            
            myLabel.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
            myLabel.layer.cornerRadius = 40.0
            
            scrollView.addSubview(myLabel)
        }
        
        // ページコントロール
        pageControl = UIPageControl(frame: CGRect(x: 0, y: self.view.frame.maxY - 100, width: width, height: 50))
        pageControl.backgroundColor = UIColor.orange
        pageControl.numberOfPages = pageSize
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        self.view.addSubview(pageControl)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if fmod(scrollView.contentOffset.x, scrollView.frame.maxX) == 0 {
            pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
        }
    }
    
}
