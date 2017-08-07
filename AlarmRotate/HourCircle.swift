//
//  HourCircle.swift
//  AlarmRotate2
//
//  Created by user1 on 8/7/17.
//  Copyright © 2017 user1. All rights reserved.
//

import UIKit

class HourCircle: UIView
{
    
    var hourCircle = UIView()
    let clockFace = ClockFace()
    
    override func layoutSubviews()
    {
        if (hourCircle.frame.size.width <= 0){
            hourCircle.frame = CGRect(x: 0.0, y: 0, width: self.frame.size.width*0.45, height: self
                .frame.size.width*0.45)
            hourCircle.center = self.center
            hourCircle.layer.cornerRadius = (self.frame.size.width*0.45)*0.5
            hourCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#424D4F")
            hourCircle.clipsToBounds = true
        }

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
            self.hourCircle.transform = CGAffineTransform(rotationAngle: angle)
            
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
