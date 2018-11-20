//
//  LeagesAndTeamsTableTableViewController.swift
//  FastPitch
//
//  Created by HGPMAC18 on 2/11/18.
//  Copyright © 2018 dwight davenport. All rights reserved.
//

import UIKit
import FirebaseDatabase

class LeaguesAndTeamsTableViewController: UITableViewController {
    
    private var dataSource = [LeaguesAndTeams]()

    //Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        //Will only run once
        
        let databaseRef = Database.database().reference()
        let _ = databaseRef.child("LeaguesAndTeams").observe(.value, with: {
            snapshot in
            guard let value = snapshot.value as? NSDictionary else { return }
            
            for (_, team) in value {
                guard let team = team as? NSDictionary else { return }
                let teamName = team["teamName"] as? String
                let teamWebsite = team["teamWebsite"] as? String
                let teamDescription = team["teamDescription"] as? String
                let teamImage = team["teamImage"] as? String
                
                let teamiInfo = LeaguesAndTeams(teamName: teamName!, teamImage: teamImage!, teamDescription: teamDescription!, teamWebsite: teamWebsite!)
                
                self.dataSource.append(teamiInfo)
                
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath) as? LeagueAndTeamCell
        
        let source = dataSource[indexPath.row]
        
        cell?.teamName.text = source.teamName
        cell?.teamDescription.text = source.teamDescription
        cell?.teamWebsite.text = source.teamWebsite
        cell?.configureImage(source.teamImage!)
        
        return cell!
        
    }

}
