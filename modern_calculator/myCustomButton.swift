//
//  myCustomButton.swift
//  modern_calculator
//
//  Created by Yossef on 9/10/19.
//  Copyright © 2019 Yossef. All rights reserved.
//

import UIKit
class myCustomButton : UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height/2
    }
}
