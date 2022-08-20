//
//  Brain.swift
//  Playo Assignment
//
//  Created by Rohan Dalmotra on 19/08/22.
//

import UIKit
class Brain{
    var newsData: [Articles] = []
    func performRequest(completed: @escaping ([Articles])->()){
        let urlString = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=a6d7ef3c91a64075a9be02e52a864c22"
        guard let url = URL(string: urlString)else {
            return
        }
        let session = URLSession.shared
        let task = session.dataTask(with: url) { data, response, error in
            if error != nil {
                print("Error caught at url session\(error!)")
                return
            }
            do {
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode(DataModel.self, from: data!)
                completed(decodedData.articles)
            }
            catch {
                print("Error caught at parsingJSON\(error)")
                
            }
        }
        task.resume()
    }
    
}
