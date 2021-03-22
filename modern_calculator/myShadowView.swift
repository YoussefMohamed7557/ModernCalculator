//
//  myShadowView.swift
//  modern_calculator
//
//  Created by Yossef on 9/16/19.
//  Copyright © 2019 Yossef. All rights reserved.
//

import UIKit
class myShadowView :UIView {
    
    
     let myLayer : CAGradientLayer = CAGradientLayer()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //the shadow view creation
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: -3, height: 3)
        self.layer.shadowOpacity = 1
        
        
        //the gradient color creation
       
       
        let first_color = UIColor.init(red: 152/255, green: 53/255, blue: 160/255, alpha: 1).cgColor
        let Second_color = UIColor.init(red: 85/255, green: 116/255, blue: 200/255, alpha: 1).cgColor
        myLayer.colors=[first_color,Second_color]
        myLayer.startPoint = CGPoint(x: 0.0, y: 0.1)
        myLayer.endPoint = CGPoint(x: 0.0, y: 0.7)
        myLayer.zPosition = -1
        self.layer.addSublayer(myLayer)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
         myLayer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
    }
    
    
    
}
