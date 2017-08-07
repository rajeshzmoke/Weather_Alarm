//
//  CirclePath.swift
//  AlarmRotate
//
//  Created by user1 on 7/26/17.
//  Copyright © 2017 user1. All rights reserved.
//

import UIKit

class CirclePath: UIView {
    
    var minCircle = UIView()
    var hourCircle = UIView()
   
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)

        
        
        minCircle.backgroundColor = .red
        addSubview(minCircle)
        
        hourCircle.backgroundColor = .yellow
        addSubview(hourCircle)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
    if (minCircle.frame.size.width <= 0){
        minCircle.frame = CGRect(x: self.frame.size.width*0.5-(self.frame.size.width*0.66)*0.5, y: self.frame.size.height*0.5-(self.frame.size.width*0.66)*0.5, width: self.frame.size.width*0.66, height: self.frame.size.width*0.66)
       minCircle.layer.cornerRadius = (self.frame.size.width*0.66)*0.5
        minCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#1E282A")
        minCircle.clipsToBounds = true
        }
        
        if (hourCircle.frame.size.width <= 0){
            hourCircle.frame = CGRect(x: 0.0, y: 0, width: self.frame.size.width*0.45, height: self
                .frame.size.width*0.45)
            hourCircle.center = self.center
            hourCircle.layer.cornerRadius = (self.frame.size.width*0.45)*0.5
            hourCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#424D4F")
            hourCircle.clipsToBounds = true
        }
   
        
    }
  
    override func draw(_ rect: CGRect) {
        //set inner-radius to the corner radius of the hourCircle and outer-radius to the corner radius of the minCircle
        let cgr1 = XMCircleGestureRecognizer(midPoint:minCircle.center,
                                             innerRadius:(self.frame.width*0.45)*0.5,
                                             outerRadius:(self.frame.width*0.66)*0.5,
                                             target: self,
                                             action: #selector(rotateGesture(recognizer:)))
        self.addGestureRecognizer(cgr1)
        
        
        //set the inner-radius to the corner radius of the Set button and the outer radius to the corner radius of the hourcircle
       let cgr2 = XMCircleGestureRecognizer(midPoint:hourCircle.center,
                                            innerRadius:(self.frame.size.width*0.25)*0.5,
                                            outerRadius:(self.frame.size.width*0.45)*0.5,
                                            target: self,
                                            action: #selector(rotateGesture(recognizer:)))
       self.addGestureRecognizer(cgr2)
        
       
        
        
        }
    
    func rotateGesture(recognizer:XMCircleGestureRecognizer)
    {
        
        if let rotation = recognizer.rotation {
            print("Rotaion \(rotation)")
            // rotation is the relative rotation for the current gesture in radians
            
        }
        
        if let angle = recognizer.angle {
            
            // angle is the absolute angle for the current gesture in radians
           
            print("Angle \(angle.degrees)")
            
            if hourCircle.frame.contains(XMCircleGestureRecognizer.crntPoint!){
              
            self.hourCircle.transform = CGAffineTransform(rotationAngle: angle)
            }
            else{
            self.minCircle.transform = CGAffineTransform(rotationAngle: angle)
            }
        }
        
        if let distance = recognizer.distance {
            print("Distance \(distance)")
            // distance is the absolute distance from the midPoint
            
        }
    }
    
    
        
    
    
}
























