//
//  TeamListTableCell.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class TeamListTableCell: UITableViewCell {
    
    static let identifier = "TeamListTableCell"
    
    @IBOutlet weak var teamNameLbl: UILabel!
    @IBOutlet weak var viewAllBtn: UIButton!
    @IBOutlet weak var playersCol: UICollectionView!
    
    var team: Team? {
        didSet {
            teamNameLbl.text = team?.team_name
            playersCol.reloadData()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension TeamListTableCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let team = self.team {
            return team.players.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TeamPlayersCollectionCell.identifier, for: indexPath) as? TeamPlayersCollectionCell {
            
            if let team = self.team {
                cell.set(player: team.players[indexPath.row])
            }
            
            return cell
        }
        
        return UICollectionViewCell()
    }
}
