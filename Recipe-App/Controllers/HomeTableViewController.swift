//
//  HomeTableViewController.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 2/2/22.
//

import UIKit

class HomeTableViewController: UITableViewController {
let sections = ["Feature session", "receipe Section"]
    let items = [["pasta", "PASTA", "Pasta"],["pasta", "pasta","pasta","pasta"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        let receipeCell = UINib.init(nibName: "ReceipeCell", bundle: nil)
        tableView.register(receipeCell, forCellReuseIdentifier: "ReceipeCell")
        
        let featureCell = UINib.init(nibName: "FeatureCell", bundle: nil)
        tableView.register(featureCell, forCellReuseIdentifier: "FeatureCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReceipeCell", for: indexPath) as! ReceipeCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
   
}
