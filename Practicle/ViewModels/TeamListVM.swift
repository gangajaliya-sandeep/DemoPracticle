//
//  TeamListVM.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class TeamListVM: NSObject {

    var teams = [Team]()
    
    func loadDataFromJson(completion: @escaping(Bool) -> ()) {
        
        DispatchQueue.main.async {
            if let path = Bundle.main.path(forResource: "teams", ofType: "json") {
                do {
                    let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                    let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                    
                    print(jsonResult)
                    
                    if let json = jsonResult as? Dictionary<String, AnyObject>, let teams = json["teams"] as? [[String: Any]], let data = Utilities.jsonToData(json: teams) {
                        
                        do {
                            self.teams = try JSONDecoder().decode([Team].self, from: data)
                            print(self.teams.count)
                            completion(true)
                        } catch {
                            print(error.localizedDescription)
                        }
                    }
                    
                    
                } catch let error {
                    print(error.localizedDescription)
                    completion(false)
                }
            }
        }
    }
}
