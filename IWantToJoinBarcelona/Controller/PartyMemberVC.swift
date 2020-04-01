//
//  PartyMemberVCViewController.swift
//  IWantToJoinBarcelona
//
//  Created by Dmytro Chernenkov on 8/28/19.
//  Copyright © 2019 Dmytro Chernenkov. All rights reserved.
//

import UIKit

class PartyMemberVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var players = [Int: Player]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let playersBase = Player.players {
            for player in playersBase {
                self.players[player.number] = player
            }
        }

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Table
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell") {
            let player = getPlayerFromDictionary(byAbsoluteNumber: indexPath.row)
            cell.imageView?.image = UIImage(named: String(player.number))
            cell.textLabel?.text = "\(player.number): \(player.name)"
            cell.detailTextLabel?.text = player.role
            return cell
        }
        return UITableViewCell()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let playerController = segue.destination as? PlayerVC {
            playerController.player = sender as! Player
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        NSLog(String(self.getPlayerFromDictionary(byAbsoluteNumber: indexPath.row).name))
        self.performSegue(withIdentifier: "ShowPlayer", sender: self.getPlayerFromDictionary(byAbsoluteNumber: indexPath.row))
    }
    
    @IBAction func unwindToParyMembersVC(segue: UIStoryboardSegue){
        
    }
    
    // MARK: - Stuff
    func getPlayerFromDictionary(byAbsoluteNumber number: Int) -> Player {
        return Array(self.players.values).sorted{$0.number < $1.number}[number]
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
