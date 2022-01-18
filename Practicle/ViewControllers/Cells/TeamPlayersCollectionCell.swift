//
//  TeamPlayersCollectionCell.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class TeamPlayersCollectionCell: UICollectionViewCell {
    
    static let identifier = "TeamPlayersCollectionCell"
    
    @IBOutlet weak var playerNameLbl: UILabel!
    
    func set(player: Player) {
        playerNameLbl.text = player.player_name
    }
}
