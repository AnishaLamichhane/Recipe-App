//
//  HomeTableViewController.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 2/2/22.
//

import UIKit

class HomeTableViewController: UITableViewController {
    let sections = ["FEATURED RECIPES", "LATEST"]
    let items = [["pasta"],["pasta", "pasta","pasta","pasta"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        let receipeCell = UINib.init(nibName: "ReceipeCell", bundle: nil)
        tableView.register(receipeCell, forCellReuseIdentifier: "ReceipeCell")
        
        let featureCell = UINib.init(nibName: "FeatureCell", bundle: nil)
        tableView.register(featureCell, forCellReuseIdentifier: "FeatureCell")
        
        let headerView = UINib.init(nibName: "HeaderView", bundle: nil)
        tableView.register(headerView, forHeaderFooterViewReuseIdentifier: "HeaderView")
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if let section = cellSection(rawValue: indexPath.section){
            switch section {
            case .featured:
                let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell", for: indexPath) as! FeatureCell
                return cell
                
            case .latest:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ReceipeCell", for: indexPath) as! ReceipeCell
                return cell
                
            }
        }
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let section = cellSection(rawValue: indexPath.section) else { return 0}
        switch section {
        case .featured:
            return 160
        case .latest:
            return 260
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderView") as! HeaderView
        headerView.headerLabel.text = sections[section]
        return headerView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
   
    
}
enum cellSection:Int{
    case featured = 0, latest
}
