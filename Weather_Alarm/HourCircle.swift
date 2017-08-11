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
    var gesture:  XMCircleGestureRecognizer?
    var days = Days()
    override func draw(_ rect: CGRect)
    {
     // Hour Circle
     // set inner-radius to the corner radius of the Set button and
     // set outer radius to the corner radius of the hourcircle
        
//        gesture = XMCircleGestureRecognizer(midPoint:CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5),
//                                            innerRadius: days.setButton,
//                                            outerRadius: (self.layer.cornerRadius),
//                                            target: self,
//                                            action: #selector(rotateGesture))
//      gesture = XMCircleGestureRecognizer(midPoint: CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5), target: self, action: #selector(rotateGesture))
//        self.addGestureRecognizer(gesture!)
        
        let ctx1 = UIGraphicsGetCurrentContext()
        let rad = self.frame.size.width*0.5  //radius*
        
        ClockFace.secondMarkers(ctx: ctx1!, x: rect.midX, y: rect.midY, radius: rad, sides: 60, color: UIColor.white)
        ClockFace.drawText(rect: rect, ctx: ctx1!, x: rect.midX, y: rect.midY, radius: rad, sides: 12, color: UIColor.white)
    }
    
//    func rotateGesture()
//    {
//        CircleFunction.rotateGesture(recognizer: gesture!, view: self)
//    }
//   
}
