//
//  HomePageVC.swift
//  HaloHaven
//
//  Created by BIT3016 on 05/03/24.
//

import UIKit

class MatchListVC: BaseVC {
    @IBOutlet weak var tableView: UITableView!
    
    let matchList = Constants.profileData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        setUpNavBar()
        
    }
    
    //Set Up Table View
    func setUpTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MatchListCell", bundle: nil), forCellReuseIdentifier: "MatchListCell")
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
    }
    
    //Set Up Nav Bar
    func setUpNavBar(){
        self.navBar.title.text = "Matches"
        self.navBar.backBtn.isHidden = true
        self.navBar.currentNavController = self.navigationController
    }
   

}

extension MatchListVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matchList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MatchListCell", for: indexPath) as! MatchListCell
        cell.name.text = matchList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
}
