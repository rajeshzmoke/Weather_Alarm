//
//  Shapes.swift
//  Weather_Alarm
//
//  Created by user1 on 8/10/17.
//  Copyright © 2017 HighPeak. All rights reserved.
//

import UIKit


class  Shapes:UIView  {
    let lineWidth = 8
    
    var sunLayer = CAShapeLayer()
    var monLayer = CAShapeLayer()
    var tueLayer = CAShapeLayer()
    var wedLayer = CAShapeLayer()
    var thuLayer = CAShapeLayer()
    var friLayer = CAShapeLayer()
    var satLayer = CAShapeLayer()

    var sunBorder = CAShapeLayer()
    var monBorder = CAShapeLayer()
    var tueBorder = CAShapeLayer()
    var wedBorder = CAShapeLayer()
    var thurBorder = CAShapeLayer()
    var friBorder = CAShapeLayer()
    var satBorder = CAShapeLayer()
    
    var sunLabel = UILabel()
     var monLabel = UILabel()
     var tueLabel = UILabel()
     var wedLabel = UILabel()
     var thurLabel = UILabel()
     var friLabel = UILabel()
     var satLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true
        
        
        sunLabel.backgroundColor = .clear
        sunLabel.text = "Sun"
        sunLabel.textColor = .white
        sunLabel.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 270))
        sunLabel.textAlignment  = .center
        self.addSubview(sunLabel)
        
        monLabel.backgroundColor = .clear
        monLabel.textAlignment  = .center
        monLabel.text = "Mon"
        monLabel.textColor = .white
        monLabel.transform = CGAffineTransform(rotationAngle: -CGFloat(Double.pi/2))
        monLabel.frame=CGRect(x: 0.0, y: 0.0, width: self.frame.size.width*0.14,height: self.frame.size.width*0.14)
        self.addSubview(monLabel)
        
        tueLabel.backgroundColor = .clear
        tueLabel.text = "Tue"
        tueLabel.textColor = .white
       // tueLabel.transform = CGAffineTransform(rotationAngle:100)
        tueLabel.textAlignment  = .center
        self.addSubview(tueLabel)
        
        wedLabel.backgroundColor = .clear
        wedLabel.text = "Wed"
        wedLabel.textColor = .white
        //wedLabel.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 270))
        wedLabel.textAlignment  = .center
       self.addSubview(wedLabel)
        
        
        thurLabel.backgroundColor = .clear
        thurLabel.text = "Thur"
        thurLabel.textColor = .white
        //thurLabel.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 270))
        thurLabel.textAlignment  = .center
        self.addSubview(thurLabel)
        
        friLabel.backgroundColor = .clear
        friLabel.text = "Fri"
        friLabel.textColor = .white
       // friLabel.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 270))
        friLabel.textAlignment  = .center
        self.addSubview(friLabel)
        
        satLabel.backgroundColor = .clear
        satLabel.text = "Sat"
        satLabel.textColor = .white
        //satLabel.transform = CGAffineTransform(rotationAngle: ClockFace.degree2radian(a: 270))
        satLabel.textAlignment  = .center
        self.addSubview(satLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.isUserInteractionEnabled = true
        
        let labelSize  = self.frame.size.width*0.14
        
        sunLabel.frame=CGRect(x: 0.0, y: 0.0, width: labelSize,height: labelSize)
        sunLabel.center = CGPoint(x: self.frame.size.width*0.1, y: self.frame.size.height*0.5)
        
        monLabel.frame=CGRect(x: 0.0, y: 0.0, width: labelSize,height: labelSize)
        monLabel.center = CGPoint(x: self.frame.size.width*0.13, y: self.frame.size.height*0.41)
        
        tueLabel.frame=CGRect(x: 0.0, y: 0.0, width: labelSize,height: labelSize)
        tueLabel.center = CGPoint(x: self.frame.size.width*0.22, y: self.frame.size.height*0.34)
        
        wedLabel.frame=CGRect(x: 0.0, y: 0.0, width: labelSize,height: labelSize)
        wedLabel.center = CGPoint(x: self.frame.size.width*0.35, y: self.frame.size.height*0.29)
        
        thurLabel.frame=CGRect(x: 0.0, y: 0.0, width: labelSize,height: labelSize)
        thurLabel.center = CGPoint(x: self.frame.size.width*0.52, y: self.frame.size.height*0.28)
        
        friLabel.frame=CGRect(x: 0.0, y: 0.0, width: labelSize,height: labelSize)
        friLabel.center = CGPoint(x: self.frame.size.width*0.67, y: self.frame.size.height*0.29)
        
        satLabel.frame=CGRect(x: 0.0, y: 0.0, width: labelSize,height: labelSize)
        satLabel.center = CGPoint(x: self.frame.size.width*0.80, y: self.frame.size.height*0.35)
       
    }
    
    override func draw(_ rect: CGRect) {
        
        layer.addSublayer(sunLayer)
        let path1 = UIBezierPath(arcCenter:CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.4, startAngle: CGFloat(ClockFace.degree2radian(a: 170)), endAngle: CGFloat(ClockFace.degree2radian(a: 190)), clockwise: true)
        sunLayer.path = path1.cgPath
        sunLayer.lineWidth = self.frame.size.width*0.1
       // sunLayer.fillColor = UIColor.black.cgColor
        sunLayer.strokeColor = UIColor.hexStringToUIColor(hex: "#424D4F").cgColor
        bringSubview(toFront: sunLabel)
        
      layer.addSublayer(sunBorder)
        let path11 = UIBezierPath(arcCenter: CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.45, startAngle: CGFloat(ClockFace.degree2radian(a: 170)), endAngle: CGFloat(ClockFace.degree2radian(a: 190)), clockwise: true)
sunBorder.path = path11.cgPath
        sunBorder.lineWidth = CGFloat(lineWidth)
      sunBorder.strokeColor = UIColor.hexStringToUIColor(hex: "#2385D9").cgColor
        
     
        layer.addSublayer(monLayer)
        let path2 = UIBezierPath(arcCenter:CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.4, startAngle: CGFloat(ClockFace.degree2radian(a: 192)), endAngle: CGFloat(ClockFace.degree2radian(a: 212)), clockwise: true)
        monLayer.path = path2.cgPath
        monLayer.lineWidth = self.frame.size.width*0.1
        monLayer.fillColor = UIColor.clear.cgColor
        monLayer.strokeColor = UIColor.hexStringToUIColor(hex: "#424D4F").cgColor
        bringSubview(toFront: monLabel)
        
        layer.addSublayer(monBorder)
        let path12 = UIBezierPath(arcCenter: CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.45, startAngle: CGFloat(ClockFace.degree2radian(a: 192)), endAngle: CGFloat(ClockFace.degree2radian(a: 212)), clockwise: true)
        monBorder.path = path12.cgPath
        monBorder.lineWidth = CGFloat(lineWidth)
        monBorder.strokeColor = UIColor.hexStringToUIColor(hex: "#2385D9").cgColor
        
        
        
        layer.addSublayer(tueLayer)
        let path3 = UIBezierPath(arcCenter:CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.4, startAngle: CGFloat(ClockFace.degree2radian(a: 215)), endAngle: CGFloat(ClockFace.degree2radian(a: 235)), clockwise: true)
        tueLayer.path = path3.cgPath
        tueLayer.lineWidth = self.frame.size.width*0.1
        tueLayer.fillColor = UIColor.clear.cgColor
        tueLayer.strokeColor = UIColor.hexStringToUIColor(hex: "#424D4F").cgColor
        bringSubview(toFront: tueLabel)
        
        layer.addSublayer(tueBorder)
        let path13 = UIBezierPath(arcCenter: CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.45, startAngle: CGFloat(ClockFace.degree2radian(a: 215)), endAngle: CGFloat(ClockFace.degree2radian(a: 235)), clockwise: true)
        tueBorder.path = path13.cgPath
        tueBorder.lineWidth = CGFloat(lineWidth)
        tueBorder.strokeColor = UIColor.hexStringToUIColor(hex: "#2385D9").cgColor
        
        
        layer.addSublayer(wedLayer)
        let path4 = UIBezierPath(arcCenter:CGPoint(x:  self.frame.size.width*0.5 , y: self.frame.size.height*0.5), radius: self.frame.size.width*0.4, startAngle: CGFloat(ClockFace.degree2radian(a: 238)), endAngle: CGFloat(ClockFace.degree2radian(a: 260)), clockwise: true)
        wedLayer.path = path4.cgPath
        wedLayer.lineWidth = self.frame.size.width*0.1
        wedLayer.fillColor = UIColor.clear.cgColor
        wedLayer.strokeColor = UIColor.hexStringToUIColor(hex: "#424D4F").cgColor
        bringSubview(toFront: wedLabel)
        
        layer.addSublayer(wedBorder)
        let path14 = UIBezierPath(arcCenter: CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.45, startAngle: CGFloat(ClockFace.degree2radian(a: 238)), endAngle: CGFloat(ClockFace.degree2radian(a: 260)), clockwise: true)
        wedBorder.path = path14.cgPath
        wedBorder.lineWidth = CGFloat(lineWidth)
        wedBorder.strokeColor = UIColor.hexStringToUIColor(hex: "#2385D9").cgColor
        
        
        layer.addSublayer(thuLayer)
        let path5 = UIBezierPath(arcCenter:CGPoint(x:  self.frame.size.width*0.5 , y: self.frame.size.height*0.5), radius: self.frame.size.width*0.4, startAngle: CGFloat(ClockFace.degree2radian(a: 263)), endAngle: CGFloat(ClockFace.degree2radian(a: 283)), clockwise: true)
        thuLayer.path = path5.cgPath
        thuLayer.lineWidth = self.frame.size.width*0.1
        thuLayer.fillColor = UIColor.clear.cgColor
        thuLayer.strokeColor = UIColor.hexStringToUIColor(hex: "#424D4F").cgColor
        bringSubview(toFront: thurLabel)
        
        layer.addSublayer(thurBorder)
        let path15 = UIBezierPath(arcCenter: CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.45, startAngle: CGFloat(ClockFace.degree2radian(a: 263)), endAngle: CGFloat(ClockFace.degree2radian(a: 283)), clockwise: true)
        thurBorder.path = path15.cgPath
        thurBorder.lineWidth = CGFloat(lineWidth)
        thurBorder.strokeColor = UIColor.hexStringToUIColor(hex: "#2385D9").cgColor
        
        
        layer.addSublayer(friLayer)
        let path6 = UIBezierPath(arcCenter:CGPoint(x:  self.frame.size.width*0.5 , y: self.frame.size.height*0.5), radius: self.frame.size.width*0.4, startAngle: CGFloat(ClockFace.degree2radian(a: 285)), endAngle: CGFloat(ClockFace.degree2radian(a: 305)), clockwise: true)
        friLayer.path = path6.cgPath
        friLayer.lineWidth = self.frame.size.width*0.1
        friLayer.fillColor = UIColor.clear.cgColor
        friLayer.strokeColor = UIColor.hexStringToUIColor(hex: "#424D4F").cgColor
        bringSubview(toFront: friLabel)
        
        layer.addSublayer(friBorder)
        let path16 = UIBezierPath(arcCenter: CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.45, startAngle: CGFloat(ClockFace.degree2radian(a: 285)), endAngle: CGFloat(ClockFace.degree2radian(a: 305)), clockwise: true)
        friBorder.path = path16.cgPath
        friBorder.lineWidth = CGFloat(lineWidth)
        friBorder.strokeColor = UIColor.hexStringToUIColor(hex: "#2385D9").cgColor
        
        
        layer.addSublayer(satLayer)
        let path7 = UIBezierPath(arcCenter:CGPoint(x:  self.frame.size.width*0.5 , y: self.frame.size.height*0.5), radius: self.frame.size.width*0.4, startAngle: CGFloat(ClockFace.degree2radian(a: 307)), endAngle: CGFloat(ClockFace.degree2radian(a: 328)), clockwise: true)
        satLayer.path = path7.cgPath
        satLayer.lineWidth = self.frame.size.width*0.1
        satLayer.fillColor = UIColor.clear.cgColor
        satLayer.strokeColor = UIColor.hexStringToUIColor(hex: "#424D4F").cgColor
        bringSubview(toFront: satLabel)
        
        layer.addSublayer(satBorder)
        let path17 = UIBezierPath(arcCenter: CGPoint(x:  self.frame.size.width*0.5, y: self.frame.size.height*0.5), radius: self.frame.size.width*0.45, startAngle: CGFloat(ClockFace.degree2radian(a: 307)), endAngle: CGFloat(ClockFace.degree2radian(a: 328)), clockwise: true)
        satBorder.path = path17.cgPath
        satBorder.lineWidth = CGFloat(lineWidth)
        satBorder.strokeColor = UIColor.hexStringToUIColor(hex: "#2385D9").cgColor
        

        
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
    
}
