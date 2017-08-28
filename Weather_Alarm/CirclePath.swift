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
    
    var angleDifference: CGFloat?
    var location:CGPoint?
    var startTransform = CGAffineTransform()
    static  var startingAngle:CGFloat?
    
    var flag1:Bool?
    var timeArr = [Double: Int]()
    var count = 0
    var arr : [Double : Int]!
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        
       
       
        
        shapes.backgroundColor = .clear
        addSubview(shapes)
        
        days.backgroundColor = .clear
        days.clipsToBounds = true
        addSubview(days)

        minCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#1E282A")
        minCircle.clipsToBounds = true
        
        addSubview(minCircle)
        
        hourCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#424D4F")
        hourCircle.clipsToBounds = true
        addSubview(hourCircle)
        
        powerButton.backgroundColor = .clear
        addSubview(powerButton)
        
        returnButton.backgroundColor = .clear
        addSubview(returnButton)
        
        self.arr = getMyValues()
        
        
        
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
        
        //days.contentMode = UIViewContentMode.redraw
    }
    
    override func draw(_ rect: CGRect)
    {
     
        
        
//        let r1 = RotationController(myView: minCircle, innerRadius: (self.bounds.width*0.45)*0.5, outerRadius: (minCircle.bounds.size.width/2), instanceRef: "Minute", target: self, action:nil)
        // #selector(testGesture(recognizer:)))
       // self.addGestureRecognizer(r1)
        //r1.cancelsTouchesInView = false
        
//        let r2 = RotationController(myView: hourCircle, innerRadius: (self.bounds.size.width*0.25)*0.5, outerRadius: hourCircle.bounds.size.width/2, instanceRef: "Hour", target: self, action:nil)
        //#selector(testGesture(recognizer:)))
        //self.addGestureRecognizer(r2)
        //r2.cancelsTouchesInView = false
        
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

    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for firsttouch in touches {
            if firsttouch == touches.first!{
            if firsttouch.view == minCircle{
                print("mincircle touched")
                flag1 = true
                
                startTransform = minCircle.transform
            }else if firsttouch.view == hourCircle.self{
                print("hourcircle touched")
                flag1 = false
                
                startTransform = hourCircle.transform
            }
            
            let location = firsttouch.location(in:self)

                let dx = location.x - self.center.x
                let dy = location.y - self.center.y
                // Store angle
                
                RotationController.startingAngle = atan2(dy, dx)
                
                
            
            }
        }
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for firsttouch in touches {
//         if firsttouch == touches.first!{
            let location = firsttouch.location(in:self)
            let dx = location.x - self.center.x
            let dy = location.y - self.center.y
            
            let angle = atan2(dy, dx)
            angleDifference = RotationController.startingAngle - angle
            
//            if firsttouch.view == minCircle || flag1 == true
//            {
//                print("mincircle touched")
//                let radians = atan2f(Float(minCircle.transform.b), Float(minCircle.transform.a))
//                updateMinuteLabel(radian: Double(radians).rounded(toPlaces: 1))
//           
//
//                minCircle.transform = CGAffineTransform(rotationAngle: -angleDifference!).concatenating(startTransform)
//            }
//            else if firsttouch.view == hourCircle.self || flag1 == false
//            {
//                print("hourcircle touched")
//                
//                let radians = atan2f(Float(hourCircle.transform.b), Float(hourCircle.transform.a))
//               updateHourLabel(radian: Double(radians).rounded(toPlaces: 1))
//                hourCircle.transform = CGAffineTransform(rotationAngle: -angleDifference!).concatenating(startTransform)
//            }
           
            //print("flag is \(flag1?.description)")
            
            
                
            if (flag1 == true && firsttouch.view == minCircle)
            {
                let radians = atan2f(Float(minCircle.transform.b), Float(minCircle.transform.a))
                
                print("rad =\(Double(radians).rounded(toPlaces: 1))")
                
                updateMinuteLabel(radian: Double(radians).rounded(toPlaces: 1))

                print("mincircle rotated")
                minCircle.transform = CGAffineTransform(rotationAngle: -angleDifference!).concatenating(startTransform)
                
            }
            else if (flag1 != true && firsttouch.view == hourCircle)
            {
                let radians = atan2f(Float(hourCircle.transform.b), Float(hourCircle.transform.a))
                
                //print("rad =\(Double(radians).rounded(toPlaces: 1))")
                
                updateHourLabel(radian: Double(radians).rounded(toPlaces: 1))
                print("Hourcircle rotated")
                hourCircle.transform = CGAffineTransform(rotationAngle: -angleDifference!).concatenating(startTransform)
            }
//        }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //startTransform = self.transform
        //        RotationController.startingAngle = nil
        flag1 = nil
        // print("ended \(flag)")
        
    }
    
    func distancefromCentre(point:CGPoint) -> CGFloat
    {
        let center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
        let dx:CGFloat = point.x - center.x;
        let dy:CGFloat = point.y - center.y;
        return CGFloat(sqrtf(Float(dx*dx + dy*dy)))
        
    }
    
 
    
    
    func updateMinuteLabel(radian : Double)
    {
        
        
        if arr.index(forKey: radian) == nil {
           // print("the key 'someKey' is NOT in the dictionary")
        }
        else
        {
            
                if(arr[radian]!*5 == 60)
                {
                    PowerButton.time2Label.text = "00"
                }
                else
                {
                    PowerButton.time2Label.text = "\(arr[radian]!*5 )"
                }
                
            }
        }
    
    
    
    func updateHourLabel(radian : Double)
    {
        
        
        if arr.index(forKey: radian) == nil {
            // print("the key 'someKey' is NOT in the dictionary")
        }
        else
        {
            
                PowerButton.timeLabel.text = "\(arr[radian] ?? 000) :"
            
            }
        }
        
        
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




















