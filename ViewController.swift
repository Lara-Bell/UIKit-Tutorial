//
//  ViewController.swift
//  UIKit Tutorial
//
//  Created by dev-mac on 2018/10/14.
//  Copyright © 2018 lara-bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        let myImage: UIImage = UIImage(named: "sample.png")!
        let imageWidth: CGFloat = 300
        let imageHeight: CGFloat = 100
        
        let downPosX: CGFloat = (self.view.bounds.width - imageWidth) / 2
        let downPosY: CGFloat = 50
        
        let myScaleDownView: UIImageView = UIImageView(frame: CGRect(x: downPosX, y: downPosY, width: imageWidth, height: imageHeight))
        
        myScaleDownView.image = myImage
        myScaleDownView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.view.addSubview(myScaleDownView)
        
        
        let upPosX: CGFloat = (self.view.bounds.width - imageWidth) / 2
        let upPosY: CGFloat = 150
        let myScaleUpView: UIImageView = UIImageView(frame: CGRect(x: upPosX, y: upPosY, width: imageWidth, height: imageHeight))
        myScaleUpView.image = myImage
        myScaleUpView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        self.view.addSubview(myScaleUpView)
        
        
        
        let rotatePosX: CGFloat = (self.view.bounds.width - imageWidth) / 2
        let rotatePosY: CGFloat = 350
        let myRotateView: UIImageView = UIImageView(frame: CGRect(x: rotatePosX, y: rotatePosY, width: imageWidth, height: imageHeight))
        myRotateView.image = myImage
        let angle: CGFloat = CGFloat((30.0 * .pi) / 180.0)
        myRotateView.transform = CGAffineTransform(rotationAngle: angle)
        self.view.addSubview(myRotateView)
        
        
        let reversePosX: CGFloat = (self.view.bounds.width - imageWidth) / 2
        let reversePosY: CGFloat = 550
        let myReverseView: UIImageView = UIImageView(frame: CGRect(x: reversePosX, y: reversePosY, width: imageWidth, height: imageHeight))
        
        myReverseView.image = myImage
        
        myReverseView.transform = myReverseView.transform.scaledBy(x: -1.0, y: 1.0)
            
        self.view.addSubview(myReverseView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
