//
//  LeaguesAndTeams.swift
//  FastPitch
//
//  Created by HGPMAC18 on 2/11/18.
//  Copyright © 2018 dwight davenport. All rights reserved.
//

import Foundation
import UIKit

class LeaguesAndTeams {
    
    var teamName: String?
    var teamImage: String?
    var teamDescription: String?
    var teamWebsite: String?
    
    init(teamName: String, teamImage: String, teamDescription: String, teamWebsite: String) {
        self.teamName = teamName
        self.teamDescription = teamDescription
        self.teamWebsite = teamWebsite
        self.teamImage = teamImage
    }
    
}
