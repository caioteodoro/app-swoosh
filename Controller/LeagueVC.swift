//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Caio Teodoro on 11/08/20.
//  Copyright © 2020 Teodoro Corp. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            player = Player()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }

    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
    }
    
    @IBAction func mensBtnSelected(_ sender: Any) {
        leagueSelected(league: "mens")
    }
    
    @IBAction func womensBtnSelected(_ sender: Any) {
        leagueSelected(league: "womens")
    }
    
    @IBAction func coedBtnSelected(_ sender: Any) {
        leagueSelected(league: "coed")
    }
    
    func leagueSelected (league: String){
        player.selectedLeague = league
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
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
