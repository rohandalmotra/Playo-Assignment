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
        cell.titleLabel.text = brain.newsData[indexPath.row].title
        cell.descriptionLabel.text = brain.newsData[indexPath.row].description
        cell.userName.text = brain.newsData[indexPath.row].author
        performRequestForImage()
        
        
        func performRequestForImage(){
            let urlString = brain.newsData[indexPath.row].urlToImage
            let url = URL(string: urlString)
            if let data = try? Data(contentsOf: url!)
            {
                let image: UIImage = UIImage(data: data)!
                cell.userImage.image = image
            }
            
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedIndexPath = tableView.indexPathForSelectedRow!
        let urlString = URL(string: brain.newsData[selectedIndexPath.row].url)!
        let destinationVC = WebViewViewController(url: urlString)
        let navVC = UINavigationController(rootViewController: destinationVC)
        present(navVC, animated: true)

    }


}

