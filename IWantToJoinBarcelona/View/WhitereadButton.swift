//
//  WhitereadButton.swift
//  IWantToJoinBarcelona
//
//  Created by Dmytro Chernenkov on 8/28/19.
//  Copyright © 2019 Dmytro Chernenkov. All rights reserved.
//

import UIKit

class WhitereadButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imageView?.image = (self.imageView?.image?.withRenderingMode(.alwaysTemplate))!
        self.imageView?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
