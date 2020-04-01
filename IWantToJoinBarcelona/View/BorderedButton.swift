//
//  BorderedButton.swift
//  IWantToJoinBarcelona
//
//  Created by Dmytro Chernenkov on 8/28/19.
//  Copyright © 2019 Dmytro Chernenkov. All rights reserved.
//

import UIKit

class BorderedButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.borderWidth = 2.0
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
