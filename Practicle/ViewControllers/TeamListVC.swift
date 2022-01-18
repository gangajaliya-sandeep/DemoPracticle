//
//  TeamListVC.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class TeamListVC: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var teamListTbl: UITableView!
    
    //MARK:- Objects
    var teamListVM = TeamListVM()
    
    //MARK:- View Life Cycel
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadDataFromJson()
    }
    
    func loadDataFromJson() {
        teamListVM.loadDataFromJson { [weak self] success in
            
            if success, let selff = self {
                selff.teamListTbl.reloadData()
            }
        }
    }
    
    //MARK:- IBAction
    @IBAction func viewAllBtnAction(_ sender: UIButton) {
        PlayerListVC.open(nav: self.navigationController, playerListVM: PlayerListVM(team: teamListVM.teams[sender.tag]))
    }
}

//MARK:- UITableView
extension TeamListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamListVM.teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: TeamListTableCell.identifier, for: indexPath) as? TeamListTableCell {
            
            cell.selectionStyle = .none
            
            cell.team = teamListVM.teams[indexPath.row]
            
            cell.viewAllBtn.tag = indexPath.row
            cell.viewAllBtn.addTarget(self, action: #selector(viewAllBtnAction(_:)), for: .touchUpInside)
            
            return cell
        }
        
        return UITableViewCell()
    }
}
