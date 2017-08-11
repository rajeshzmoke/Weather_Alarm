//
//  Days.swift
//  AlarmRotate2
//
//  Created by user1 on 8/7/17.
//  Copyright © 2017 user1. All rights reserved.
//

import UIKit

class Days: UIView
{
    
    var sunButton =  UIButton()
    var monButton =  UIButton()
    var tueButton =  UIButton()
    var wedButton =  UIButton()
    var thurButton = UIButton()
    var friButton =  UIButton()
    var satButton =  UIButton()

   
    
    
    var sunText = CATextLayer()
    var monText = CATextLayer()
    var tueText = CATextLayer()
    var wedText = CATextLayer()
    var thuText = CATextLayer()
    var friText = CATextLayer()
    var satText = CATextLayer()

    var buttonArray = [UIButton]()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true
        //self.layer.backgroundColor = UIColor.clear.cgColor
        
        
        sunButton.backgroundColor = .clear
//        sunButton.setTitle("Sun", for: .normal)
//        sunButton.setTitleColor(.black, for: .normal)
        sunButton.showsTouchWhenHighlighted = true

        buttonArray.append(sunButton)
        sunButton.clipsToBounds = true
        
        
        
        monButton.backgroundColor = .clear
       // monButton.alpha = 0.5
       // monButton.setTitle("Mon", for: .normal)
        monButton.showsTouchWhenHighlighted = true
        //addTarget(self, action: #selector(clicked), for: UIControlEvents.touchUpInside)
       buttonArray.append(monButton)
        
        
        
        tueButton.backgroundColor = .clear
        //tueButton.setTitle("Tue", for: .normal)
       // tueButton.addTarget(self, action: #selector(clicked), for: UIControlEvents.touchUpInside)
        buttonArray.append(tueButton)
        tueButton.showsTouchWhenHighlighted = true
        
        
        wedButton.backgroundColor = .clear
        wedButton.showsTouchWhenHighlighted = true
        //wedButton.setTitle("Wed", for: .normal)
        buttonArray.append(wedButton)
        
        thurButton.backgroundColor = .clear
        //thurButton.setTitle("Thu", for: .normal)
        thurButton.showsTouchWhenHighlighted = true
        buttonArray.append(thurButton)
        
        friButton.backgroundColor = .clear
        //friButton.setTitle("Fri", for: .normal)
        friButton.showsTouchWhenHighlighted = true
        buttonArray.append(friButton)
        
        satButton.backgroundColor = .clear

       // satButton.setTitle("Sat", for: .normal)
        satButton.showsTouchWhenHighlighted = true
        buttonArray.append(satButton)
        
        
        
        
        self.addSubview(sunButton)
        self.addSubview(monButton)
        self.addSubview(tueButton)
        self.addSubview(wedButton)
        self.addSubview(thurButton)
        self.addSubview(friButton)
        self.addSubview(satButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    func clicked()
    {
        print("hello rajesh")
        tueButton.backgroundColor = .blue
    }

    
    func callingrajesh()
    {
        print("hello rajesh")
    }
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
        self.isUserInteractionEnabled = true
        
        let buttonsize  = self.frame.size.width*0.14
     
        sunButton.frame = CGRect(x: 0.0, y: 0.0, width:buttonsize , height:buttonsize)
        sunButton.center = CGPoint(x: self.frame.size.width*0.1, y: self.frame.size.height*0.5)
        
        
        monButton.frame = CGRect(x: 0.0, y: 0.0, width: buttonsize, height: buttonsize)
        monButton.center = CGPoint(x: self.frame.size.width*0.13, y: self.frame.size.height*0.41)
        
        tueButton.frame = CGRect(x: 0.0, y: 0.0, width: buttonsize, height: buttonsize)
        tueButton.center = CGPoint(x: self.frame.size.width*0.2, y: self.frame.size.height*0.325)
        
        wedButton.frame = CGRect(x: 0.0 ,y: 0.0, width: buttonsize, height: buttonsize)
        wedButton.center = CGPoint(x: self.frame.size.width*0.365, y: self.frame.size.height*0.28)
        
        thurButton.frame = CGRect(x: 0.0 ,y: 0.0 , width: buttonsize, height: buttonsize)
        thurButton.center = CGPoint(x: self.frame.size.width*0.52, y: self.frame.size.height*0.27)
        
        friButton.frame = CGRect(x: 0.0 ,y: 0.0 , width: buttonsize, height: buttonsize)
        friButton.center = CGPoint(x: self.frame.size.width*0.67, y: self.frame.size.height*0.30)
        
        satButton.frame = CGRect(x: 0.0 ,y: 0.0, width: buttonsize, height: buttonsize)
        satButton.center = CGPoint(x: self.frame.size.width*0.81, y: self.frame.size.height*0.35)

    }

    
    // CGPoint(x: self.frame.size.width*0.45+(self.frame.size.width*0.412), y: self.frame.size.height*0.18)
    override func draw(_ rect: CGRect)
    {
        //sunday
       // sunLayer = setShapeLayer(shapeLayer: sunLayer, button: sunButton, day: "Sun")
      // sunButton.layer.addSublayer(sunLayer)
        //sunText =  setDay(txt: sunText, button: sunButton, day: "Sun")
//
//        
//        //monday
//        monLayer = setShapeLayer(shapeLayer: monLayer, button: monButton, day: "mon")
//        let path4 = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width*0.425,y: self.frame.size.height*0.3), radius: self.frame.size.width*0.415, startAngle: CGFloat(Double.pi + Double.pi*23/180), endAngle: CGFloat(Double.pi + Double.pi*42/180), clockwise: true)
//        monLayer.path = path4.cgPath
//        //monText = setDay(txt: monText, button: monButton, day: "Mon")
//        
////        monText.fontSize = CGFloat(18)
////        monText.setAffineTransform(CGAffineTransform(rotationAngle: CGFloat(3*Double.pi/2)))
////        monText.string = "Mon"
////        monText.alignmentMode = String(kCAAlignmentRight)
////        monText.frame = CGRect(x: monButton.frame.width*0.3-20, y:  monButton.frame.size.height*0.3, width: monButton.frame.size.width*0.3, height: monButton.frame.size.height*0.3)
////        monButton.layer.addSublayer(monText)
//        
//
//        
//        //saturday
//        satLayer = setShapeLayer(shapeLayer: satLayer, button: satButton, day: "Sat")
//        let path9 = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width*0.22-(self.frame.size.width*0.5),y: self.frame.size.height*0.28), radius: self.frame.size.width*0.40, startAngle: CGFloat(Double.pi + Double.pi*138/180), endAngle: CGFloat(Double.pi + Double.pi*158/180), clockwise: true)
//        satLayer.path = path9.cgPath
//        satText = setDay(txt: satText, button: satButton, day: "Sat")
//
//        
    }
    
    
    func setShapeLayer(shapeLayer: CAShapeLayer!,button: UIButton!,day: String) -> CAShapeLayer
    {
        shapeLayer.frame = button.bounds
        button.backgroundColor = .yellow
        shapeLayer.lineWidth = self.frame.size.width*0.17
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.gray.cgColor
        
        layer.addSublayer(shapeLayer)
        button.layer.addSublayer(shapeLayer)
        
        return shapeLayer
    }
    func setDay(txt: CATextLayer!, button: UIButton,day: String) ->CATextLayer
    {
        txt.fontSize = CGFloat(18)
        txt.setAffineTransform(CGAffineTransform(rotationAngle: CGFloat(3*Double.pi / 2)))
        txt.string = day
        txt.alignmentMode = String(kCAAlignmentRight)
        txt.frame = button.bounds
        
        button.layer.addSublayer(txt)
        
        return txt
    }
    

}
