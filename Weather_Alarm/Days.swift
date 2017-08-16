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

    var sunView = UIView()
    var monView = UIView()
    var tueView = UIView()
    var wedView = UIView()
    var thurView = UIView()
    var friView = UIView()
    var satView = UIView()
    
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
        sunButton.setTitle("Sun", for: .normal)
        //sunButton.setTitleColor(.black, for: .normal)
        sunButton.showsTouchWhenHighlighted = true
        buttonArray.append(sunButton)
        sunButton.clipsToBounds = true

        monButton.backgroundColor = .clear
       // monButton.alpha = 0.5
        monButton.setTitle("Mon", for: .normal)
        monButton.showsTouchWhenHighlighted = true
        //addTarget(self, action: #selector(clicked), for: UIControlEvents.touchUpInside)
       buttonArray.append(monButton)
        
        tueButton.backgroundColor = .clear
        tueButton.setTitle("Tue", for: .normal)
       // tueButton.addTarget(self, action: #selector(clicked), for: UIControlEvents.touchUpInside)
        buttonArray.append(tueButton)
        tueButton.showsTouchWhenHighlighted = true
        
        wedButton.backgroundColor = .clear
        wedButton.showsTouchWhenHighlighted = true
        wedButton.setTitle("Wed", for: .normal)
        buttonArray.append(wedButton)
        
        thurButton.backgroundColor = .clear
        thurButton.setTitle("Thu", for: .normal)
        thurButton.showsTouchWhenHighlighted = true
        buttonArray.append(thurButton)
        
        friButton.backgroundColor = .clear
        friButton.setTitle("Fri", for: .normal)
        friButton.showsTouchWhenHighlighted = true
        buttonArray.append(friButton)
        
        satButton.backgroundColor = .clear
        satButton.setTitle("Sat", for: .normal)
        satButton.showsTouchWhenHighlighted = true
        buttonArray.append(satButton)
        
        //
        sunView.backgroundColor = .clear
        sunView.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 270))
        
        self.addSubview(sunView)
        sunView.addSubview(sunButton)
        
        //
        monView.backgroundColor = .clear
        monView.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 290))
        
        self.addSubview(monView)
        monView.addSubview(monButton)
        
        //
        tueView.backgroundColor = .clear
        tueView.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 310))
        
        self.addSubview(tueView)
        tueView.addSubview(tueButton)
        
        //
        wedView.backgroundColor = .clear
        wedView.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 340))
        
        self.addSubview(wedView)
        wedView.addSubview(wedButton)
        
        //
        thurView.backgroundColor = .clear
        
        self.addSubview(thurView)
        thurView.addSubview(thurButton)
        
        //
        friView.backgroundColor = .clear
        friView.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 25))
        
        self.addSubview(friView)
        friView.addSubview(friButton)
        
        //
        satView.backgroundColor = .clear
        satView.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 45))
        
        self.addSubview(satView)
        satView.addSubview(satButton)
        
       
       
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        
        //sunday
        sunView.frame = CGRect(x: 0.0, y: 0.0, width: buttonsize*0.7, height: buttonsize*0.7)
        sunView.center = CGPoint(x: self.frame.size.width*0.1, y: self.frame.size.height*0.5)
      
        sunButton.frame = CGRect(x: 0.0, y: 0.0, width:buttonsize , height:buttonsize)
        sunButton.center = CGPoint(x: sunView.frame.size.width*0.5 , y: sunView.frame.size.height*0.5)
        
        //monday
        monView.frame = CGRect(x: 0.0, y: 0.0, width: buttonsize*0.5, height: buttonsize)
        monView.center = CGPoint(x: self.frame.size.width*0.12, y: self.frame.size.height*0.42)
        
        monButton.frame = CGRect(x: 0.0, y: 0.0, width: buttonsize, height: buttonsize)
        monButton.center = CGPoint(x: monView.frame.size.width*0.5, y: monView.frame.size.height*0.5)
        
        //tuesday
        tueView.frame = CGRect(x: 0.0, y: 0.0, width: buttonsize*0.3, height: buttonsize)
        tueView.center = CGPoint(x: self.frame.size.width*0.2, y: self.frame.size.height*0.35)
        
        tueButton.frame = CGRect(x: 0.0, y: 0.0, width: buttonsize, height: buttonsize)
        tueButton.center = CGPoint(x: tueView.frame.size.width*0.4, y: tueView.frame.size.height*0.5)
        
        //wednesday
        wedView.frame = CGRect(x: 0.0 ,y: 0.0, width: buttonsize, height: buttonsize*0.4)
        wedView.center = CGPoint(x: self.frame.size.width*0.35, y: self.frame.size.height*0.285)
        
        wedButton.frame = CGRect(x: 0.0 ,y: 0.0, width: buttonsize, height: buttonsize)
        wedButton.center = CGPoint(x: wedView.frame.size.width*0.4, y: wedView.frame.size.height*0.5)
        
        //thursday
        thurView.frame = CGRect(x: 0.0 ,y: 0.0 , width: buttonsize*0.7, height: buttonsize*0.7)
        thurView.center = CGPoint(x: self.frame.size.width*0.525, y: self.frame.size.height*0.28)
        
        thurButton.frame = CGRect(x: 0.0 ,y: 0.0 , width: buttonsize, height: buttonsize)
        thurButton.center = CGPoint(x: thurView.frame.size.width*0.4, y: thurView.frame.size.height*0.5)
        
        //friday
        friView.frame = CGRect(x: 0.0 ,y: 0.0 , width: buttonsize*0.6, height: buttonsize)
        friView.center = CGPoint(x: self.frame.size.width*0.68, y: self.frame.size.height*0.29)
        
        friButton.frame = CGRect(x: 0.0 ,y: 0.0 , width: buttonsize, height: buttonsize)
        friButton.center = CGPoint(x: friView.frame.size.width*0.4, y: friView.frame.size.height*0.5)
        
        //Saturday
        satView.frame = CGRect(x: 0.0 ,y: 0.0, width: buttonsize*0.2, height: buttonsize)
        satView.center = CGPoint(x: self.frame.size.width*0.81, y: self.frame.size.height*0.355)
        
        satButton.frame = CGRect(x: 0.0 ,y: 0.0, width: buttonsize, height: buttonsize)
        satButton.center = CGPoint(x: satView.frame.size.width*0.3, y: satView.frame.size.height*0.35)

       
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
