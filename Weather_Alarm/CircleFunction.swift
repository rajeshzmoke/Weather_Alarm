//
//  CircleFunction.swift
//  AlarmRotate2
//
//  Created by user1 on 8/10/17.
//  Copyright © 2017 user1. All rights reserved.
//

import UIKit

class CircleFunction
{

    class func rotateGesture(recognizer:XMCircleGestureRecognizer, view:UIView)
{
    
//    guard gesture != nil else {
//        return
//    }
    
    if let rotation = recognizer.rotation {
        print("Rotaion \(rotation)")
        // rotation is the relative rotation for the current gesture in radians
        
    }
    
    if let angle = recognizer.angle {
        
        // angle is the absolute angle for the current gesture in radians
        
        print("Angle \(angle.degrees)")
        
//        if view.frame.contains((recognizer.crntPoint)!){
//            view.transform = CGAffineTransform(rotationAngle: angle)
//        }
    }
    
    if let distance = recognizer.distance {
        print("Distance \(distance)")
        // distance is the absolute distance from the midPoint
        
    }
}
    
    }
