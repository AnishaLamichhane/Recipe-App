//
//  CategoryTableViewController.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 2/2/22.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    let items = ["APPETIZER","BREAKFAST & BRUNCH","DESSERT","BEVERAGES", "MAIN DISH", "PASTA", "SALAD", "SOUP"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesCell", for: indexPath) as! CategoriesCell
        cell.categoryLabel.text = items[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.setHidesBackButton(true, animated: false)
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
   
}
