//
//  LeagueAndTeamCell.swift
//  FastPitch
//
//  Created by HGPMAC18 on 2/11/18.
//  Copyright © 2018 dwight davenport. All rights reserved.
//

import UIKit
import FirebaseStorageUI

class LeagueAndTeamCell: UITableViewCell {
    
    @IBOutlet weak var teamImage: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var teamDescription: UILabel!
    @IBOutlet weak var teamWebsite: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureImage(_ teamImage: String) {
        let ref = Storage.storage().reference(forURL: teamImage)
        self.teamImage.sd_setImage(with: ref)
    }

}
