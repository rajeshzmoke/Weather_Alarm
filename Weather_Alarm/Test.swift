//
//  Test.swift
//  Weather_Alarm
//
//  Created by user1 on 8/24/17.
//  Copyright © 2017 HighPeak. All rights reserved.
//

import Foundation

// Rotating circle touches ended

/*override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    startTransform = myView!.transform
    //RotationController.startingAngle = nil
    // flag = true
    // print("ended \(flag)")
}*/


// MinCircle
//        set inner-radius to the corner radius of the hourCircle and
//        set outer-radius to the corner radius of the minCircle
//       let cgr1 = XMCircleGestureRecognizer(midPoint:self.center,
//                                             innerRadius:(self.frame.width*0.45)*0.5,
//                                             outerRadius:(minCircle.frame.size.width/2),
//                                             instanceRef:"Minute",
//                                             target: self,
//                                             action: #selector(rotateGesture(recognizer:)))
//        self.addGestureRecognizer(cgr1)
//



// Hour Circle
//set inner-radius to the corner radius of the Set button and
//set outer radius to the corner radius of the hourcircle
//
//      let cgr2 = XMCircleGestureRecognizer(midPoint:self.center,
//                                             innerRadius:(self.frame.size.width*0.25)*0.5,
//                                             outerRadius:hourCircle.frame.size.width/2,
//                                             instanceRef: "Hour",
//                                             target: self,
//                                             action: #selector(rotateGesture(recognizer:)))
//        self.addGestureRecognizer(cgr2)



//override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
//    
//    for touch in touches {
//        
//        let location = touch.location(in:myView?.superview)
//        
//        let dist = distancefromCentre(point: location)
//        print("dist is \(dist)")
//        print("outerRadius is \(outerRadius!)")
//        print("innerradius is \(innerRadius!)")
//        if (dist < outerRadius! && dist > innerRadius!)
//        {
//            let dx = location.x - myView!.center.x
//            let dy = location.y - myView!.center.y
//            // Store angle
//            
//            RotationController.startingAngle = atan2(dy, dx)
//            
//            startTransform = myView!.transform
//            flag = true
//        }else {
//            print("not in view")
//            flag = false
//        }
//        
//    }
//    
//}
//override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//    
//    
//    for touch in touches{
//        let location = touch.location(in:myView?.superview)
//        
//        if (flag)
//        {
//            let radians = atan2f(Float(myView!.transform.b), Float(myView!.transform.a))
//            
//            print("rad =\(Double(radians).rounded(toPlaces: 1))")
//            
//            updateLabel(radian: Double(radians).rounded(toPlaces: 1))
//            
//            
//            // if myView.isMember(of: MinuteCircle.self){
//            let dx = location.x - myView!.center.x
//            let dy = location.y - myView!.center.y
//            
//            let angle = atan2(dy, dx)
//            angleDifference = RotationController.startingAngle - angle
//            
//            
//            myView!.transform = CGAffineTransform(rotationAngle: -angleDifference!).concatenating(startTransform!)
//            
//            
//        }
//        else {
//            print("moved error")
//        }
//    }
//    
//}
