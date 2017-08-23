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
    static let timeLabel = UILabel()
    static let time2Label = UILabel()
    let ampmButton = UIButton()
    var oN = false
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true

        PowerButton.timeLabel.backgroundColor = UIColor.hexStringToUIColor(hex: "#2385D9")
        PowerButton.timeLabel.text = "10 : 35"
        PowerButton.timeLabel.textColor = UIColor.white
        PowerButton.timeLabel.textAlignment  = .center
        self.addSubview(PowerButton.timeLabel)
        
        PowerButton.time2Label.backgroundColor = UIColor.hexStringToUIColor(hex: "#2385D9")
        PowerButton.time2Label.text = "0"
        PowerButton.time2Label.textColor = UIColor.white
        PowerButton.time2Label.textAlignment  = .center
        self.addSubview(PowerButton.time2Label)
        
        
        setButton.showsTouchWhenHighlighted = true
//        setButton.setTitle("Set", for: .normal)
//        setButton.setTitleColor(UIColor.white, for: .normal)
        setButton.setImage(#imageLiteral(resourceName: "power"), for: .normal)
        setButton.contentMode = UIViewContentMode.scaleAspectFit
        setButton.backgroundColor = UIColor.hexStringToUIColor(hex: "#2385D9")
        setButton.layer.shadowOpacity = 0.7
        setButton.layer.shadowRadius = 5
        setButton.layer.shadowColor = UIColor.black.cgColor
        self.addSubview(setButton)
        
        ampmButton.backgroundColor = UIColor.hexStringToUIColor(hex: "#2385D9")
        ampmButton.alpha = 0.8
        //currentTime()
        ampmButton.setTitle("AM", for: .normal)
        ampmButton.setTitleColor(UIColor.white, for: .normal)
        ampmButton.showsTouchWhenHighlighted = true
        //ampmButton.setTitle("PM", for: .highlighted)
        ampmButton.addTarget(self, action: #selector(onClick), for: UIControlEvents.touchUpInside)
        self.addSubview(ampmButton)
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews()
    {
        self.isUserInteractionEnabled = true
        
        //Button round
        setButton.frame=CGRect(x: 0, y: 0 ,width: self.frame.size.width*0.4, height: self.frame.size.width*0.4)
        setButton.center = CGPoint(x: self.frame.size.width*0.15, y: self.frame.size.height*0.5)
        setButton.layer.cornerRadius = (setButton.frame.size.width)*0.5
        
        //Rectangle Button
        
        PowerButton.timeLabel.frame=CGRect(x: 0, y: 0, width: setButton.frame.size.width*1.5,
                                    height: setButton.frame.size.height*0.5)
        PowerButton.timeLabel.center = CGPoint(x: setButton.frame.size.width*1.25, y: setButton.frame.midY)
        
        PowerButton.time2Label.frame=CGRect(x: 0, y: 0, width: setButton.frame.size.width*0.5,
                                           height: setButton.frame.size.height*0.5)
        PowerButton.time2Label.center = CGPoint(x: setButton.frame.size.width*1.25, y: setButton.frame.midY+50)
        
        //AM-PM Button
        ampmButton.frame = CGRect(x: 0.0, y: 0.0, width: setButton.frame.size.width*0.5, height: setButton.frame.size.height*0.5)
        ampmButton.center = CGPoint(x: PowerButton.timeLabel.frame.size.width*1.45, y: PowerButton.timeLabel.frame.midY)
        
        
    }
    func onClick()
    {
        changeAmPm(bool: !oN)
    }
    
    func changeAmPm(bool:Bool)
    {
        oN = bool
        
    }
}


