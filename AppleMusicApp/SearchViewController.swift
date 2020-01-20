//
//  SearchViewController.swift
//  AppleMusicApp
//
//  Created by  Джон Костанов on 19/01/2020.
//  Copyright © 2020 John Kostanov. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "indexPath: \(indexPath)"
        return cell
    }
}
