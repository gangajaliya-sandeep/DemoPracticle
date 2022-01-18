//
//  Player.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class Player: Codable {
    
    var id = 0
    var player_name = ""
    
    init(id: Int, player_name: String) {
        self.id = id
        self.player_name = player_name
    }
}
