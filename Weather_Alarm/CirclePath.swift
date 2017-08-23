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

    
    var location:CGPoint?
   var startTransform = CGAffineTransform()
    static  var startingAngle1:CGFloat?
    static  var startingAngle2:CGFloat?
    var timeArr = [Double: Int]()
    var count = 0
    var arr : [Double : Int]!
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)

        
        minCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#1E282A")
        minCircle.clipsToBounds = true
        
        
        addSubview(minCircle)
        
        shapes.backgroundColor = .clear
        addSubview(shapes)
        
        days.backgroundColor = .clear
        days.clipsToBounds = true
        addSubview(days)
        
        hourCircle.backgroundColor = UIColor.hexStringToUIColor(hex: "#424D4F")
        hourCircle.clipsToBounds = true
        addSubview(hourCircle)
        
        powerButton.backgroundColor = .clear
        addSubview(powerButton)
        
        returnButton.backgroundColor = .clear
        addSubview(returnButton)
     
    //self.arr = getMyValues()
     
        
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
                minCircle.frame = CGRect(x:0.0 , y: 0.0, width: self.frame.size.width*0.66, height: self.frame.size.width*0.66)
                minCircle.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                minCircle.layer.cornerRadius = minCircle.frame.size.width*0.5
                
                hourCircle.frame = CGRect(x: 0.0, y: 0, width: self.frame.size.width*0.45, height: self
                    .frame.size.width*0.45)
                hourCircle.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                hourCircle.layer.cornerRadius = hourCircle.frame.size.width*0.5
                
                powerButton.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width*0.55, height:self.frame.size.width*0.2)
                powerButton.center = CGPoint(x: self.frame.midX + self.frame.midX*0.4, y: self.frame.size.height*0.5)
                powerButton.layer.cornerRadius = powerButton.frame.size.width*0.5
               
                days.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
                days.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                
                shapes.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
                shapes.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                
                returnButton.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width*0.15, height: self.frame.size.width*0.15)
                returnButton.center = CGPoint(x: self.frame.size.width*0.15, y: self.frame.size.height*0.65)
                returnButton.layer.cornerRadius = returnButton.frame.size.width*0.5

            }
            else if UIDevice.current.orientation.isLandscape
            {
                print("landscape")
                minCircle.frame = CGRect(x:0.0 , y: 0.0, width: self.frame.size.height*0.66, height: self.frame.size.height*0.66)
                minCircle.center = self.center
                // CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                minCircle.layer.cornerRadius = minCircle.frame.size.height*0.5
                
                hourCircle.frame = CGRect(x: 0.0, y: 0, width: self.frame.size.height*0.45, height: self
                    .frame.size.height*0.45)
                hourCircle.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                hourCircle.layer.cornerRadius = hourCircle.frame.size.height*0.5
                
                powerButton.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.height*0.2, height:self.frame.size.height*0.2)
                powerButton.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                
                
                days.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
                days.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                
                shapes.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
                shapes.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
                
                returnButton.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width*0.15, height: self.frame.size.width*0.15)
                returnButton.center = CGPoint(x: self.frame.size.width*0.15, y: self.frame.size.height*0.65)
                returnButton.layer.cornerRadius = returnButton.frame.size.width*0.5
            }

        }
    }

    override func draw(_ rect: CGRect)
    {
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
        
        
        let r1 = RotationController(myView: minCircle, innerRadius: (self.frame.width*0.45)*0.5, outerRadius: (minCircle.frame.size.width/2), instanceRef: "Minute", target: self, action:nil)
           // #selector(testGesture(recognizer:)))
                self.addGestureRecognizer(r1)
    //r1.cancelsTouchesInView = false
        
        let r2 = RotationController(myView: hourCircle, innerRadius: (self.frame.size.width*0.25)*0.5, outerRadius: hourCircle.frame.size.width/2, instanceRef: "Hour", target: self, action:nil)
            //#selector(testGesture(recognizer:)))
        self.addGestureRecognizer(r2)
        //r2.cancelsTouchesInView = false
        
    }
    
    

  
//    func getMyValues() -> [Double:Int]
//    {
//        
//        var newArr = [Double: Int]()
//        
//        newArr.updateValue(11, forKey: Double(0.5))
//        newArr.updateValue(10, forKey: Double(1.0))
//        newArr.updateValue(9, forKey: Double(1.5))
//        newArr.updateValue(8, forKey: Double(2.0))
//        newArr.updateValue(7, forKey: Double(2.6))
//        newArr.updateValue(6, forKey: Double(3.1))
//        newArr.updateValue(5, forKey: Double(-2.6))
//        newArr.updateValue(4, forKey: Double(-2.0))
//        newArr.updateValue(3, forKey: Double(-1.5))
//        newArr.updateValue(2, forKey: Double(-1.0))
//        newArr.updateValue(1, forKey: Double(-0.5))
//        newArr.updateValue(12, forKey: 0)
//        
//        return newArr
//    }
//    
//    func updateLabel(radian : Double)
//    {
//       
//        if arr.index(forKey: radian) == nil {
//            print("the key 'someKey' is NOT in the dictionary")
//        }
//        else
//        {
//            PowerButton.timeLabel.text = "\(arr[radian] ?? 0000)"
//            
//        }
//    }
//    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches {
//            if touch.view == minCircle{
//            let location = touch.location(in:minCircle.superview)
//            
//            let dx = location.x - minCircle.center.x
//            let dy = location.y - minCircle.center.y
//            
//            
//            CirclePath.startingAngle1 = atan2(dy, dx)
//            
//            startTransform = minCircle.transform
//            }
//            else {
//                print("not minute view")
//            }
//        }
//        }
//    
//    
//    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches{
//            
//            if touch.view == minCircle{
//
//            let location = touch.location(in:minCircle.superview)
//            
//            let radians = atan2f(Float(minCircle.transform.b), Float(minCircle.transform.a))
//            
//            print("rad =\(Double(radians).rounded(toPlaces: 1))")
//            
//            print("in touchesmoved")
//            
//            updateLabel(radian: Double(radians).rounded(toPlaces: 1))
//            
//            let dx = location.x - minCircle.center.x
//            let dy = location.y - minCircle.center.y
//            
//            let angle = atan2(dy, dx)
//                
//            let angleDifference: CGFloat = CirclePath.startingAngle1! - angle
//            
//            minCircle.transform = CGAffineTransform(rotationAngle: -angleDifference).concatenating(startTransform)
//            }
//            else{
//                
//                print("not working")
//            }
//            
//        }
//    }
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        //Circle.startingAngle = nil
//        
//    }
//    
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        //self.transform = startTransform
//        //  Circle.startingAngle = nil
//    }

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




















