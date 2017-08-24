//
//  CirclePath.swift
//  AlarmRotate
//
//  Created by user1 on 7/26/17.
//  Copyright © 2017 user1. All rights reserved.
//

import UIKit

class CirclePath: UIView {
    
    var minCircle = MinuteCircle()
    var hourCircle = HourCircle()
    var powerButton = PowerButton()
    var days = Days()
    var shapes = Shapes()
    var returnButton = ReturnButton()
    
    
    var location:CGPoint?
    var startTransform = CGAffineTransform()
    static  var startingAngle1:CGFloat?
    static  var startingAngle2:CGFloat?
    var timeArr = [Double: Int]()
    var count = 0
    var arr : [Double : Int]!
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        
        minCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#1E282A")
        minCircle.clipsToBounds = true
        
        
        addSubview(minCircle)
        
        shapes.backgroundColor = .clear
        addSubview(shapes)
        
        days.backgroundColor = .clear
        days.clipsToBounds = true
        addSubview(days)
        
        hourCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#424D4F")
        hourCircle.clipsToBounds = true
        addSubview(hourCircle)
        
        powerButton.backgroundColor = .clear
        addSubview(powerButton)
        
        returnButton.backgroundColor = .clear
        addSubview(returnButton)
        
        //self.arr = getMyValues()
        
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if flag == true
        {
            if UIDevice.current.orientation.isPortrait
            {
                print("portrait")
                minCircle.bounds = CGRect(x:0.0 , y: 0.0, width: self.bounds.size.width*0.66, height: self.bounds.size.width*0.66)
                minCircle.center = CGPoint(x: self.bounds.size.width*0.5, y: self.bounds.size.height*0.5)
                minCircle.layer.cornerRadius = minCircle.bounds.size.width*0.5
                
                hourCircle.bounds = CGRect(x: 0.0, y: 0, width: self.bounds.size.width*0.45, height: self
                    .bounds.size.width*0.45)
                hourCircle.center = CGPoint(x: self.bounds.size.width*0.5, y: self.bounds.size.height*0.5)
                hourCircle.layer.cornerRadius = hourCircle.bounds.size.width*0.5
                
                powerButton.bounds = CGRect(x: 0.0, y: 0.0, width: self.bounds.size.width*0.55, height:self.bounds.size.width*0.2)
                powerButton.center = CGPoint(x: self.bounds.midX + self.bounds.midX*0.4, y: self.bounds.size.height*0.5)
                powerButton.layer.cornerRadius = powerButton.bounds.size.width*0.5
                
                days.bounds = CGRect(x: 0.0, y: 0.0, width: self.bounds.size.width, height: self.bounds.size.height)
                days.center = CGPoint(x: self.bounds.size.width*0.5, y: self.bounds.size.height*0.5)
                
                shapes.bounds = CGRect(x: 0.0, y: 0.0, width: self.bounds.size.width, height: self.bounds.size.height)
                shapes.center = CGPoint(x: self.bounds.size.width*0.5, y: self.bounds.size.height*0.5)
                
                returnButton.bounds = CGRect(x: 0.0, y: 0.0, width: self.bounds.size.width*0.15, height: self.bounds.size.width*0.15)
                returnButton.center = CGPoint(x: self.bounds.size.width*0.15, y: self.bounds.size.height*0.65)
                returnButton.layer.cornerRadius = returnButton.bounds.size.width*0.5
                
            }
            else if UIDevice.current.orientation.isLandscape
            {
                print("landscape")
                minCircle.bounds = CGRect(x:0.0 , y: 0.0, width: self.bounds.size.height*0.66, height: self.bounds.size.height*0.66)
                minCircle.center = self.center
                // CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                minCircle.layer.cornerRadius = minCircle.bounds.size.height*0.5
                
                hourCircle.bounds = CGRect(x: 0.0, y: 0, width: self.bounds.size.height*0.45, height: self
                    .bounds.size.height*0.45)
                hourCircle.center = CGPoint(x: self.bounds.size.width*0.5, y: self.bounds.size.height*0.5)
                hourCircle.layer.cornerRadius = hourCircle.bounds.size.height*0.5
                
                powerButton.bounds = CGRect(x: 0.0, y: 0.0, width: self.bounds.size.height*0.2, height:self.bounds.size.height*0.2)
                powerButton.center = CGPoint(x: self.bounds.size.width*0.5, y: self.bounds.size.height*0.5)
                
                
                days.bounds = CGRect(x: 0.0, y: 0.0, width: self.bounds.size.width, height: self.bounds.size.height)
                days.center = CGPoint(x: self.bounds.size.width*0.5, y: self.bounds.size.height*0.5)
                
                shapes.bounds = CGRect(x: 0.0, y: 0.0, width: self.bounds.size.width, height: self.bounds.size.height)
                shapes.center = CGPoint(x: self.bounds.size.width*0.5, y: self.bounds.size.height*0.5)
                
                returnButton.bounds = CGRect(x: 0.0, y: 0.0, width: self.bounds.size.width*0.15, height: self.bounds.size.width*0.15)
                returnButton.center = CGPoint(x: self.bounds.size.width*0.15, y: self.bounds.size.height*0.65)
                returnButton.layer.cornerRadius = returnButton.bounds.size.width*0.5
            }
            
        }
    }
    
    override func draw(_ rect: CGRect)
    {
     
        
        
        let r1 = RotationController(myView: minCircle, innerRadius: (self.bounds.width*0.45)*0.5, outerRadius: (minCircle.bounds.size.width/2), instanceRef: "Minute", target: self, action:nil)
        // #selector(testGesture(recognizer:)))
        self.addGestureRecognizer(r1)
        //r1.cancelsTouchesInView = false
        
        let r2 = RotationController(myView: hourCircle, innerRadius: (self.bounds.size.width*0.25)*0.5, outerRadius: hourCircle.bounds.size.width/2, instanceRef: "Hour", target: self, action:nil)
        //#selector(testGesture(recognizer:)))
        self.addGestureRecognizer(r2)
        //r2.cancelsTouchesInView = false
        
    }
    
    func testGesture(recognizer:RotationController){
        if let angle = recognizer.angleDifference {
            
            // angle is the absolute angle for the current gesture in radians
            
            print("Angle \(angle)")
            //self.minCircle.transform = CGAffineTransform(rotationAngle: -angle).concatenating(recognizer.startTransform!)
            
            //                    if recognizer.instanceRef == "Minute"
            //                    {
            //
            //                        self.minCircle.transform = CGAffineTransform(rotationAngle: angle)
            //                    }
            //                    else if recognizer.instanceRef == "Hour"
            //                    {
            //                        self.hourCircle.transform = CGAffineTransform(rotationAngle: angle)
            //                    }
        }
        
    }
    
    
}





//  func rotateGesture(recognizer:XMCircleGestureRecognizer){
//        if let angle = recognizer.angle {
//
//            // angle is the absolute angle for the current gesture in radians
//
//            print("Angle \(angle)")
//
//            if recognizer.instanceRef == "Minute"
//            {
//
//                self.minCircle.transform = CGAffineTransform(rotationAngle: angle)
//            }
//            else if recognizer.instanceRef == "Hour"
//            {
//                self.hourCircle.transform = CGAffineTransform(rotationAngle: angle)
//            }
//        }
//        if let distance = recognizer.distance {
////                        print("Distance \(distance)")
//                        // distance is the absolute distance from the midPoint
//                    }
//        if let rotation = recognizer.rotation {
//            //            print("Rotaion \(rotation)")
//            //            // rotation is the relative rotation for the current gesture in radians
//            //
//                    }




















