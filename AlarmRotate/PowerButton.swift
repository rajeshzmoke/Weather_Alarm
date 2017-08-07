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

    
    let powerButton = UIButton()
    let timeLabel = UILabel()
    
    
    
    
    override func layoutSubviews()
    {
        //Button round
        
        powerButton.frame=CGRect(x: 0, y: 0 ,width: self.frame.size.width*0.25, height: self.frame.size.width*0.25)
        powerButton.center = self.center
        powerButton.layer.cornerRadius = (self.frame.size.width*0.25)*0.5
        powerButton.showsTouchWhenHighlighted = true
        powerButton.setTitle("Set", for: .normal)
        powerButton.setTitleColor(UIColor.black, for: .normal)
        powerButton.backgroundColor = UIColor.hexStringToUIColor(hex: "#2385D9")
        powerButton.alpha = 0.8
        self.addSubview(powerButton)
        
        //Rectangle Button
        
        timeLabel.frame=CGRect(x: (powerButton.frame.origin.x+powerButton.frame.size.width)-powerButton.frame.size.width*0.1, y: powerButton.frame.origin.y+powerButton.frame.size.height*0.25, width: powerButton.frame.size.width*1.3, height: powerButton.frame.size.height*0.5)
        timeLabel.backgroundColor = UIColor.hexStringToUIColor(hex: "#2385D9")
        timeLabel.alpha = 0.7
        timeLabel.text = "10  :  35"
        self.addSubview(timeLabel)

    }
}
