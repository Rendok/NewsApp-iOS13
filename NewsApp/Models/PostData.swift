//
//  PostData.swift
//  NewsApp
//
//  Created by Dmitry Grebenyuk on 24/9/20.
//

import Foundation

struct PostData: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let url: String
    let title: String
}
