//
//  PlayerListVC.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class PlayerListVC: UIViewController {
    
    //MARK:- Objects
    var playerListVM: PlayerListVM!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.set()
    }
    
    func set() {
        guard let team = playerListVM.team else { return }
        
        self.title = team.team_name
    }
}

//MARK:- UITableView
extension PlayerListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let team = playerListVM.team {
            return team.players.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: PlayersTableCell.identifier, for: indexPath) as? PlayersTableCell {
            
            cell.selectionStyle = .none
            
            if let team = playerListVM.team {
                cell.set(player: team.players[indexPath.row])
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
}


//Class Level Method
extension PlayerListVC {
    class func open(nav: UINavigationController?, playerListVM: PlayerListVM) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "PlayerListVC") as! PlayerListVC
        vc.playerListVM = playerListVM
        nav?.pushViewController(vc, animated: true)
    }
}
