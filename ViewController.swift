//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by dev-mac on 2018/10/14.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myScrollView = UIScrollView()
        
        myScrollView.frame = self.view.frame
        
        let myImage = UIImage(named: "sample_image.jpg")!
        
        let myImageView = UIImageView()
        
        myImageView.image = myImage
        
        myImageView.frame = myScrollView.frame
        
        myImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        myScrollView.addSubview(myImageView)
        
        let scroll_height = myImage.size.height * (self.view.frame.width / myImage.size.width)
        
        myScrollView.contentSize = CGSize(width: self.view.frame.width, height: scroll_height)
        
        self.view.addSubview(myScrollView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
