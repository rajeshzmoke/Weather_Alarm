//
//  PowerButton.swift
//  AlarmRotate2
//
//  Created by user1 on 8/7/17.
//  Copyright © 2017 user1. All rights reserved.
//

import UIKit

class PowerButton: UIView
{

    
    let setButton = UIButton()
    let timeLabel = UILabel()
    let ampmButton = UIButton()
    let returnButton = UIButton()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true

        returnButton.backgroundColor = UIColor.hexStringToUIColor(hex: "#424D4F")
        returnButton.setTitle("<-", for: .normal)
        returnButton.setTitleColor(UIColor.white, for: .normal)
        returnButton.showsTouchWhenHighlighted = true
        self.addSubview(returnButton)
        
        timeLabel.backgroundColor = UIColor.hexStringToUIColor(hex: "#2385D9")
        timeLabel.text = "10  :  35"
        timeLabel.textColor = UIColor.white
        timeLabel.textAlignment  = .center
        self.addSubview(timeLabel)
        
        
        setButton.showsTouchWhenHighlighted = true
        setButton.setTitle("Set", for: .normal)
        setButton.setTitleColor(UIColor.white, for: .normal)
        setButton.backgroundColor = UIColor.hexStringToUIColor(hex: "#2385D9")
        setButton.layer.shadowOpacity = 0.7
        setButton.layer.shadowRadius = 5
        setButton.layer.shadowColor = UIColor.black.cgColor
        self.addSubview(setButton)
        
        ampmButton.backgroundColor = UIColor.hexStringToUIColor(hex: "#2385D9")
        ampmButton.alpha = 0.8
        ampmButton.setTitle("AM", for: .normal)
        ampmButton.setTitleColor(UIColor.white, for: .normal)
        ampmButton.showsTouchWhenHighlighted = true
        ampmButton.setTitle("PM", for: .highlighted)
        ampmButton.addTarget(self, action: #selector(changer), for: UIControlEvents.touchUpInside)
        self.addSubview(ampmButton)


    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews()
    {
        self.isUserInteractionEnabled = true
        
        //Button round
        setButton.frame=CGRect(x: 0, y: 0 ,width: self.frame.size.width*0.2, height: self.frame.size.width*0.2)
        setButton.center = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.height*0.5)
        setButton.layer.cornerRadius = (setButton.frame.size.width)*0.5
        
        //Rectangle Button
        
        timeLabel.frame=CGRect(x: 0, y: 0, width: setButton.frame.size.width*1.4,
                                    height: setButton.frame.size.height*0.5)
        timeLabel.center = CGPoint(x: setButton.frame.midX + setButton.frame.midX*0.45, y: setButton.frame.midY)
        
        //AM-PM Button
        ampmButton.frame = CGRect(x: 0.0, y: 0.0, width: setButton.frame.size.width*0.5, height: setButton.frame.size.height*0.5)
        ampmButton.center = CGPoint(x: timeLabel.frame.midX + timeLabel.frame.midX*0.25, y: timeLabel.frame.midY)
        
        //return button
        returnButton.frame = CGRect(x: 0.0, y: 0.0, width: setButton.frame.size.width*0.6, height: setButton.frame.size.height*0.6)
        returnButton.center = CGPoint(x: setButton.frame.midX - setButton.frame.midX*0.8, y: setButton.frame.midY*1.5)
        returnButton.layer.cornerRadius = returnButton.frame.size.width*0.5
    }
    func changer(){
        
        print("AM-PM Selected")
    }
}