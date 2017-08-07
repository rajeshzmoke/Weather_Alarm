//
//  Shape.swift
//  AlarmRotate
//
//  Created by user1 on 7/24/17.
//  Copyright © 2017 user1. All rights reserved.
//

import UIKit

class Shape: UIView {

    let shapelayer = CAShapeLayer()
    

    
    let lineWidth: CGFloat = 1
    
     override init(frame: CGRect) {
        super.init(frame: frame)
        
    }

    override func draw(_ rect: CGRect) {
       
        //Day Circle
        let path4 = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2,y: self.frame.size.height/2), radius: self.frame.size.width*0.45, startAngle: 0.0, endAngle: CGFloat(Double.pi), clockwise: false)
        hexStringToUIColor(hex: "#1D2123").setFill()
        path4.fill()
        
        path4.lineWidth = self.lineWidth
        UIColor.black.setStroke()
        path4.stroke()

        
        
        //Minute Circle
        let path = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2,y: self.frame.size.height/2), radius: self.frame.size.width*0.35, startAngle: 0.0, endAngle: CGFloat(Double.pi * 2), clockwise: true)
        hexStringToUIColor(hex: "#1E282A").setFill()
        path.fill()
        
        path.lineWidth = 3
        
        UIColor.white.setStroke()
        path.stroke()
        //addGestures()
        
        //Hour Circle
        let path2 = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2,y: self.frame.size.height/2), radius: self.frame.size.width*0.25, startAngle: 0.0, endAngle: CGFloat(Double.pi*2), clockwise: true)
        hexStringToUIColor(hex: "#424D4F").setFill()
        path2.fill()
        
        path2.lineWidth = self.lineWidth
        UIColor.black.setStroke()
        path2.stroke()
        //addGestures()
        
        //Set button
        let path3 = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2,y: self.frame.size.height/2), radius: self.frame.size.width*0.1, startAngle: 0.0, endAngle: CGFloat(Double.pi*2), clockwise: true)
        hexStringToUIColor(hex: "#2885CF").setFill()
        path3.fill()
        
        path3.lineWidth = self.lineWidth
        UIColor.black.setStroke()
        path3.stroke()
        print("path3 bound is \(path3.bounds)")
        addGestures()

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    
    }
    
    func addGestures(){
        let rotateGr = UIRotationGestureRecognizer(target: self, action: #selector(handleRotate))
        self.addGestureRecognizer(rotateGr)
    }
    
    func handleRotate(rotationGr: UIRotationGestureRecognizer){
        self.superview!.bringSubview(toFront: self)
        let rotation = rotationGr.rotation
        self.transform = self.transform.rotated(by: rotation)
        rotationGr.rotation = 0.0
    }
    
    

//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let touch = touches.first{
//            var location = touch.location(in: self)
//            let node = point(inside: UIBezierPath, with: <#T##UIEvent?#>)
//            
//        }
//            
//        }

}
    
   
    


  



