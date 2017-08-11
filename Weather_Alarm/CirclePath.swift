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
  
    override init(frame: CGRect)
    {
        super.init(frame: frame)

       
        
        shapes.backgroundColor = .cyan
        addSubview(shapes)
        
       
        
        days.backgroundColor = .clear
        days.clipsToBounds = true
        addSubview(days)

        minCircle.backgroundColor = .red
        minCircle.clipsToBounds = true
        addSubview(minCircle)
        
        hourCircle.backgroundColor = .yellow
        hourCircle.clipsToBounds = true
        addSubview(hourCircle)
        
        powerButton.backgroundColor = .clear
        addSubview(powerButton)
        
     

        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
 

    override func layoutSubviews() {
        super.layoutSubviews()
        
        if flag == true
        {
              if UIDevice.current.orientation.isLandscape
            {
                print("landscape")
                minCircle.frame = CGRect(x:0.0 , y: 0.0, width: self.frame.size.height*0.66, height: self.frame.size.height*0.66)
                 minCircle.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                minCircle.layer.cornerRadius = minCircle.frame.size.height*0.5
                
                hourCircle.frame = CGRect(x: 0.0, y: 0, width: self.frame.size.height*0.45, height: self
                    .frame.size.height*0.45)
                hourCircle.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                hourCircle.layer.cornerRadius = hourCircle.frame.size.height*0.5
                
                powerButton.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.height*0.2, height:self.frame.size.height*0.2)
                powerButton.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)

            }
            else if UIDevice.current.orientation.isPortrait
            {
                 print("portrait")
                minCircle.frame = CGRect(x:0.0 , y: 0.0, width: self.frame.size.width*0.66, height: self.frame.size.width*0.66)
                 minCircle.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                 minCircle.layer.cornerRadius = minCircle.frame.size.width*0.5
                
                hourCircle.frame = CGRect(x: 0.0, y: 0, width: self.frame.size.width*0.45, height: self
                    .frame.size.width*0.45)
                hourCircle.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                hourCircle.layer.cornerRadius = hourCircle.frame.size.width*0.5
                
                
                powerButton.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height:self.frame.size.width)
                powerButton.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)

    
        }
        
            
        minCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#1E282A")
        minCircle.clipsToBounds = true
            
        hourCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#424D4F")
        hourCircle.clipsToBounds = true
   
        days.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
            days.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
            
         shapes.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
            shapes.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
    }
    }
    
    override func draw(_ rect: CGRect)
    {
        //MinCircle
        //set inner-radius to the corner radius of the hourCircle and 
        //set outer-radius to the corner radius of the minCircle
       let cgr1 = XMCircleGestureRecognizer(midPoint:self.center,
                                             innerRadius:(self.frame.width*0.45)*0.5,
                                             outerRadius:(minCircle.frame.size.width/2),
                                             target: self,
                                             action: #selector(rotateGesture(recognizer:)))
        self.addGestureRecognizer(cgr1)
        
        

        // Hour Circle
        //set inner-radius to the corner radius of the Set button and
        //set outer radius to the corner radius of the hourcircle
     
      let cgr2 = XMCircleGestureRecognizer(midPoint:self.center,
                                             innerRadius:(self.frame.size.width*0.25)*0.5,
                                             outerRadius:hourCircle.frame.size.width/2,
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
            
            //print("Angle \(angle.degrees)")
            if  hourCircle.frame.contains(XMCircleGestureRecognizer.crntPoint!) {
                self.hourCircle.transform = CGAffineTransform(rotationAngle: angle)
            } else if minCircle.frame.contains(XMCircleGestureRecognizer.crntPoint!){
                self.minCircle.transform = CGAffineTransform(rotationAngle: angle)
            }
        }
        
        if let distance = recognizer.distance {
            print("Distance \(distance)")
            // distance is the absolute distance from the midPoint
            
        }
    }

}
























