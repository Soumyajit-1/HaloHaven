//
//  SearchVC.swift
//  HaloHaven
//
//  Created by Soumyajit Pal on 07/03/24.
//

import UIKit
import Foundation

class SearchVC: BaseVC {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    let data = Constants.profileData
    var filteredData: [String]?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setUpNavBar()
        setUpTableView()
    }

    func setUpTableView(){
        filteredData = data
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SearchProfileCell", bundle: nil), forCellReuseIdentifier: "SearchProfileCell")
        tableView.showsVerticalScrollIndicator = false
        
    }
    
    func setUpNavBar(){
        navBar.currentNavController = self.navigationController
        navBar.title.text = "Search"
        navBar.backBtn.isHidden = true
    }
}

extension SearchVC: UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchProfileCell", for: indexPath) as! SearchProfileCell
        cell.name.text = filteredData?[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == ""
        {
            searchBar.perform(#selector(self.resignFirstResponder), with: nil, afterDelay: 0.1)
        }
        filteredData = []
        if searchText == ""{
            filteredData = data
        }else{
            for val in data{
                if val.lowercased().contains(searchText.lowercased()){
                    filteredData?.append(val)
                }
            }
        }
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
        vc.name = (filteredData?[indexPath.row])!
        vc.isOptionsViewHidden = false
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
