//
//  MinuteCircle.swift
//  AlarmRotate2
//
//  Created by user1 on 8/7/17.
//  Copyright © 2017 user1. All rights reserved.
//

import UIKit

class MinuteCircle: UIView
{
    //var minCircle = UIView()
    let clockFace = ClockFace()
    
    override func layoutSubviews()
    {
//        if (minCircle.frame.size.width <= 0)
//        {
//            minCircle.frame = CGRect(x: self.frame.size.width*0.5-(self.frame.size.width*0.66)*0.5, y: self.frame.size.height*0.5-(self.frame.size.width*0.66)*0.5, width: self.frame.size.width*0.66, height: self.frame.size.width*0.66)
//            minCircle.layer.cornerRadius = (self.frame.size.width*0.66)*0.5
//            minCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#1E282A")
//            minCircle.clipsToBounds = true
//        }

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
                self.transform = CGAffineTransform(rotationAngle: angle)
           
        }
        
        if let distance = recognizer.distance {
            print("Distance \(distance)")
            // distance is the absolute distance from the midPoint
            
        }
    }
    
    override func draw(_ rect: CGRect)
    {
        clockFace.secondMarkers(ctx: <#T##CGContext#>, x: <#T##CGFloat#>, y: <#T##CGFloat#>, radius: <#T##CGFloat#>, sides: <#T##Int#>, color: <#T##UIColor#>)
        clockFace.drawText(rect: <#T##CGRect#>, ctx: <#T##CGContext#>, x: <#T##CGFloat#>, y: <#T##CGFloat#>, radius: <#T##CGFloat#>, sides: <#T##Int#>, color: <#T##UIColor#>)
    }



}
