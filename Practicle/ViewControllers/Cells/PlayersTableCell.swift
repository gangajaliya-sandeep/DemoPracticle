//
//  PlayersTableCell.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class PlayersTableCell: UITableViewCell {
    
    static let identifier = "PlayersTableCell"
    
    @IBOutlet weak var playerNameLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func set(player: Player) {
        playerNameLbl.text = player.player_name
    }
}
