//
//  Player.swift
//  IWantToJoinBarcelona
//
//  Created by Dmytro Chernenkov on 8/28/19.
//  Copyright © 2019 Dmytro Chernenkov. All rights reserved.
//

import Foundation

class Player {
    var number: Int
    var name: String
    var role: String
    
    init(number: Int, name: String, role: String) {
        self.number = number
        self.role = role
        self.name = name
    }
    
    static var players: [Player]? {
        var barcPlayers: [Player]?
        
        guard let path = Bundle.main.path(forResource: "BarcPlayers", ofType: "plist") else {
            print("Не удалось найти игроков")
            return barcPlayers
        }
        
        let url = URL(fileURLWithPath: path)
        
        guard let dictionary = NSDictionary(contentsOf: url) else {
            print("error")
            return barcPlayers
        }
        
        guard let players = dictionary["Players"] as? NSDictionary else {
            print("error")
            return barcPlayers
        }
        
        barcPlayers = []
        
        for playerDescription in players {
            barcPlayers!.append(Player(
                number: Int(playerDescription.key as! String)!,
                name: (playerDescription.value as! NSDictionary)["Name"]! as! String,
                role: (playerDescription.value as! NSDictionary)["Role"]! as! String
            ))
        }
        
        return barcPlayers!.sorted {
            $0.number < $1.number
        }
    }
}
