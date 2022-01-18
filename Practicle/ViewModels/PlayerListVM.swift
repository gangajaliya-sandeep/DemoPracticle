//
//  PlayerListVM.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class PlayerListVM: NSObject {

    var team: Team?
    
    init(team: Team) {
        self.team = team
    }
}
