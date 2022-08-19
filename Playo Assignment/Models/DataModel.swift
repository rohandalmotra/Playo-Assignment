//
//  DataModel.swift
//  Playo Assignment
//
//  Created by Rohan Dalmotra on 19/08/22.
//

struct DataModel: Codable{
    
    let articles: [Articles]
}

struct Articles: Codable{
    let author: String
    let title: String
    let description: String
    let url: String
    let urlToImage: String

}
