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
    var instanceMn:String = "Minute"
    var startTransform = CGAffineTransform()
    static  var startingAngle:CGFloat?
    
    var timeArr = [Double: Int]()
    var count = 0
    
    var arr : [Double : Int]!
    
 
    
    override func draw(_ rect: CGRect)
    {
 
        
        let ctx1 = UIGraphicsGetCurrentContext()
     let rad = self.frame.size.width*0.51//radius*
        ClockFace.secondMarkers(ctx: ctx1!, x: rect.midX, y: rect.midY, radius: rad, sides: 60, color: UIColor.white)
        ClockFace.drawMinuteText(rect: rect, ctx: ctx1!, x: rect.midX, y: rect.midY, radius: rad, sides: 12, color: UIColor.white)
        
      
        
    }
//    func getMyValues() -> [Double:Int]
//        {
//    
//            var newArr = [Double: Int]()
//    
//            newArr.updateValue(11, forKey: Double(0.5))
//            newArr.updateValue(10, forKey: Double(1.0))
//            newArr.updateValue(9, forKey: Double(1.5))
//            newArr.updateValue(8, forKey: Double(2.0))
//            newArr.updateValue(7, forKey: Double(2.6))
//            newArr.updateValue(6, forKey: Double(3.1))
//            newArr.updateValue(5, forKey: Double(-2.6))
//            newArr.updateValue(4, forKey: Double(-2.0))
//            newArr.updateValue(3, forKey: Double(-1.5))
//            newArr.updateValue(2, forKey: Double(-1.0))
//            newArr.updateValue(1, forKey: Double(-0.5))
//            newArr.updateValue(12, forKey: 0)
//    
//            return newArr
//        }
//    
//        func updateLabel(radian : Double)
//        {
//    
//            if arr.index(forKey: radian) == nil {
//                print("the key 'someKey' is NOT in the dictionary")
//            }
//            else
//            {
//                PowerButton.timeLabel.text = "\(arr[radian] ?? 0000)"
//    
//            }
//        }
//    
//    
//    
//        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//            //super.touchesBegan(touches, with: event)
//            for touch in touches {
//                let location = touch.location(in:self.superview)
//               
//                let dx = location.x - self.center.x
//                let dy = location.y - self.center.y
//                // Store angle and current time
//                CirclePath.startingAngle = atan2(dy, dx)
//    
//                startTransform = self.transform
//    
//            }
//        }
//    
//    
//        override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//          //  super.touchesMoved(touches, with: event)
//            for touch in touches{
//                //This logs the rotation of the view each time the user drags their finger
//                let radians = atan2f(Float(self.transform.b), Float(self.transform.a))
//    
//                print("rad =\(Double(radians).rounded(toPlaces: 1))")
//    
//    
//                updateLabel(radian: Double(radians).rounded(toPlaces: 1))
//    
//                let location = touch.location(in:self.superview)
//    
//                let dx = location.x - self.center.x
//                let dy = location.y - self.center.y
//    
//                let angle = atan2(dy, dx)
//                let angleDifference: CGFloat = CirclePath.startingAngle! - angle
//    
//    
//    
//                self.transform = CGAffineTransform(rotationAngle: -angleDifference).concatenating(startTransform)
//    
//    
//            }
//        }
//        override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//         //   super.touchesEnded(touches, with: event)
//            //Circle.startingAngle = nil
//            
//        }
//        
//        override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//          //  super.touchesCancelled(touches, with: event)
//            //self.transform = startTransform
//            //  Circle.startingAngle = nil
//        }
    
        
    
 
}
