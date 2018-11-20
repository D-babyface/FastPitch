//
//  EntryViewController.swift
//  FastPitch
//
//  Created by HGPMAC18 on 10/9/17.
//  Copyright © 2017 dwight davenport. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        let loginVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        self.present(loginVC, animated: true, completion: nil)
    }
    
    @IBAction func registerTapped(_ sender: Any) {
        let loginVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "registerVC") as! RegisterViewController
        self.present(loginVC, animated: true, completion: nil)
    }
    
    @IBAction func equipmentTapped(_ sender: Any) {
        let equipmentVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "equipmentVC") as!
            EquipmentViewController
        self.navigationController?.pushViewController(equipmentVC, animated: true)

    }
    
    @IBAction func clothesTapped(_ sender: Any) {
        let clothesVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "clothesVC") as!
        ClothesViewController
        self.navigationController?.pushViewController(clothesVC, animated: true)

    }
    
    @IBAction func fieldsTapped(_ sender: Any) {
        let fieldsVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "baseballFieldsVC") as!
        BaseballFieldsAndParksViewController
        self.navigationController?.pushViewController(fieldsVC, animated: true)
    }
    
    @IBAction func leaguesTapped(_ sender: Any) {
        let leaguesVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LeaguesAndTeamsTVC") as!
    LeaguesAndTeamsTableViewController
        self.navigationController?.pushViewController(leaguesVC, animated: true)
    
    }
}
