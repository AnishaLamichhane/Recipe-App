//
//  FavouriteTableViewController.swift
//  Recipe-App
//
//  Created by Anisha Lamichhane on 2/2/22.
//

import UIKit

class FavouriteTableViewController: UITableViewController {
let items = ["pasta", "pasta", "psta", "pasta", "pasta"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let receipeCell = UINib.init(nibName: "ReceipeCell", bundle: nil)
        tableView.register(receipeCell, forCellReuseIdentifier: "ReceipeCell")
       
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
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
