//
//  RotationController.swift
//  Weather_Alarm
//
//  Created by user1 on 8/22/17.
//  Copyright © 2017 HighPeak. All rights reserved.
//

import Foundation
import UIKit

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}


class RotationController: UIGestureRecognizer
{
    
    var instanceRef: String?
    var startTransform:CGAffineTransform?
    
    static  var startingAngle:CGFloat = CGFloat(0)
    
    
    var flag:Bool = true
    
    var myView:UIView?
    
    var innerRadius:CGFloat?
    var outerRadius:CGFloat?
    
    var angleDifference: CGFloat?
    var arr : [Double : Int]!
    
    
    init(myView:UIView?,innerRadius:CGFloat?, outerRadius:CGFloat? ,instanceRef:String ,target: AnyObject?, action: Selector?) {
        super.init(target: target, action: action)
        
        arr = getMyValues()
        
        self.instanceRef = instanceRef
        self.myView = myView
        self.innerRadius = innerRadius
        self.outerRadius = outerRadius
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    func getMyValues() -> [Double:Int]
    {
        
        var newArr = [Double: Int]()
        
        newArr.updateValue(11, forKey: Double(0.5))
        newArr.updateValue(10, forKey: Double(1.0))
        newArr.updateValue(9, forKey: Double(1.5))
        newArr.updateValue(8, forKey: Double(2.0))
        newArr.updateValue(7, forKey: Double(2.6))
        newArr.updateValue(6, forKey: Double(3.1))
        newArr.updateValue(5, forKey: Double(-2.6))
        newArr.updateValue(4, forKey: Double(-2.0))
        newArr.updateValue(3, forKey: Double(-1.5))
        newArr.updateValue(2, forKey: Double(-1.0))
        newArr.updateValue(1, forKey: Double(-0.5))
        newArr.updateValue(12, forKey: 0.0)
        
        
        return newArr
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        
        for touch in touches {
            
            let location = touch.location(in:myView?.superview)
            
            let dist = distancefromCentre(point: location)
            print("dist is \(dist)")
            print("outerRadius is \(outerRadius!)")
            print("innerradius is \(innerRadius!)")
            if (dist < outerRadius! && dist > innerRadius!)
            {
                let dx = location.x - myView!.center.x
                let dy = location.y - myView!.center.y
                // Store angle
                
                RotationController.startingAngle = atan2(dy, dx)
                
                startTransform = myView!.transform
                flag = true
            }else {
                print("not in view")
                flag = false
            }
          
        }
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        for touch in touches{
            let location = touch.location(in:myView?.superview)
            
            if (flag)
            {
                let radians = atan2f(Float(myView!.transform.b), Float(myView!.transform.a))
                
                print("rad =\(Double(radians).rounded(toPlaces: 1))")
                
                updateLabel(radian: Double(radians).rounded(toPlaces: 1))
                
                
                // if myView.isMember(of: MinuteCircle.self){
                let dx = location.x - myView!.center.x
                let dy = location.y - myView!.center.y
                
                let angle = atan2(dy, dx)
                angleDifference = RotationController.startingAngle - angle
                
                
                myView!.transform = CGAffineTransform(rotationAngle: -angleDifference!).concatenating(startTransform!)
                
                
            }
            else {
                print("moved error")
            }
        }
        
    }
    
    func distancefromCentre(point:CGPoint) -> CGFloat
    {
        let center = CGPoint(x: self.view!.frame.size.width*0.5, y: self.view!.frame.size.height*0.5)
        let dx:CGFloat = point.x - center.x;
        let dy:CGFloat = point.y - center.y;
        return CGFloat(sqrtf(Float(dx*dx + dy*dy)))
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        startTransform = myView!.transform
        //        RotationController.startingAngle = nil
        // flag = true
        // print("ended \(flag)")
        
    }
    
    
    func updateLabel(radian : Double)
    {
        print("inisde updatefnc")
        
        if arr.index(forKey: radian) == nil {
            print("the key 'someKey' is NOT in the dictionary")
        }
        else
        {
            if myView!.isMember(of: HourCircle.self){
                PowerButton.timeLabel.text = "\(arr[radian] ?? 000) :"
            }else{
            PowerButton.time2Label.text = "\(arr[radian]!*5 ?? 0000)"
            }
        }
        
        
    }
    
    
    
    
    
}
