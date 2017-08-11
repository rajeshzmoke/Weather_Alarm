//
//  ViewController.swift
//  AlarmRotate
//
//  Created by user1 on 7/24/17.
//  Copyright © 2017 user1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
       var cp:CirclePath!
    
    override func loadView() {
        self.view = UIView.init(frame: UIScreen.main.bounds)
        self.view.backgroundColor = UIColor.white

        cp = CirclePath()
        self.view = cp
        cp.backgroundColor = UIColor.brown
        
        
//        cp.layer.shadowOffset = CGSize(width: 5, height: 5)
//        cp.layer.shadowOpacity = 0.7
//        cp.layer.shadowRadius = 5
//        cp.layer.shadowColor = UIColor(red: 80.0/255.0, green: 50.0/255.0, blue: 50, alpha: 0.8).cgColor

    }
   
   
    
}






























////        let rect = CGRect(x: 0, y: 0, width: self.view.frame.size.width*0.7, height: self.view.frame.size.width*0.7)
//        let cp = CirclePath(frame: rect)
//        cp.center = CGPoint(x: self.view.frame.size.width*0.5, y: self.view.frame.size.height*0.5)
//        cp.backgroundColor = .clear
//        cp.layer.shadowOffset = CGSize(width: 5, height: 5)
//        cp.layer.shadowOpacity = 0.7
//        cp.layer.shadowRadius = 5
//        cp.layer.shadowColor = UIColor(red: 80.0/255.0, green: 50.0/255.0, blue: 50, alpha: 0.8).cgColor
//
//view.addSubview(cp)

