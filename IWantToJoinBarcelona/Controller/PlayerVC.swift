//
//  PlayerVC.swift
//  IWantToJoinBarcelona
//
//  Created by Dmytro Chernenkov on 8/28/19.
//  Copyright © 2019 Dmytro Chernenkov. All rights reserved.
//

import UIKit

class PlayerVC: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    weak var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.photoImageView.image = UIImage(named: "\(self.player.number)")
        self.numberLabel.text = String(self.player.number)
        self.nameLabel.text = self.player.name
        self.roleLabel.text = self.player.role

    }

}
