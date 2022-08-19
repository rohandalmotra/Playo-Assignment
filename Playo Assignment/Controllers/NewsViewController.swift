//
//  ViewController.swift
//  Playo Assignment
//
//  Created by Rohan Dalmotra on 19/08/22.
//

import UIKit

class NewsViewController: UITableViewController {
    
    let brain = Brain()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        brain.performRequest{data in
            self.brain.newsData = data
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return brain.newsData.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsItem", for: indexPath) as! CustomTableViewCell
       
        cell.textLabel?.text = brain.newsData[indexPath.row].title
        
        return cell
    }


}

