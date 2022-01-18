//
//  Team.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class Team: Codable {

    var id = 0
    var team_name = ""
    var players = [Player]()
    
    init(id: Int, team_name: String, players: [Player]) {
        self.id = id
        self.team_name = team_name
        self.players = players
    }
}
