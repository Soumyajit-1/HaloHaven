//
//  SearchVC.swift
//  HaloHaven
//
//  Created by Soumyajit Pal on 07/03/24.
//

import UIKit

class SearchVC: BaseVC {
    @IBOutlet weak var searchBar: UISearchBar!
    
    let data = Constants.profileData
    var filteredData: [String]?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setUpNavBar()
    }
    

    func setUpNavBar(){
        self.navBar.title.text = "Search"
        self.navBar.backBtn.isHidden = true
    }

}

extension SearchVC: UITableViewDataSource,UISearchBarDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}


/*
 import UIKit

 class SearchTableViewController: UITableViewController,UISearchBarDelegate{
     @IBOutlet weak var searchBar : UISearchBar!
     let data = ["apple","Orange","banana","potato","Mango"]
     var filteredData : [String]!
     override func viewDidLoad() {
         super.viewDidLoad()
         searchBar.delegate = self
         filteredData = data
     }

     // MARK: - Table view data source

     override func numberOfSections(in tableView: UITableView) -> Int {
         // #warning Incomplete implementation, return the number of sections
         return 1
     }

     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         // #warning Incomplete implementation, return the number of rows
         return filteredData.count
     }
     
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
         cell.textLabel?.text = filteredData[indexPath.row]
         return cell
     }

 }

 //MARK: SearchBar Extension
 extension SearchTableViewController{
     func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
         filteredData = []
         if searchText == ""{
             filteredData = data
         }else{
             for val in data{
                 if val.lowercased().contains(searchText.lowercased()){
                     filteredData.append(val)
                 }
             }
         }
        
         
         self.tableView.reloadData()
     }
 }

 */
