//
//  NetworkMatager.swift
//  NewsApp
//
//  Created by Dmitry Grebenyuk on 24/9/20.
//

import Foundation

class NetworkMatager {
    func fetchData() {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error)
            }
            
            let decoder = JSONDecoder()
            do {
                let data = try decoder.decode(PostData.self, from: data!)
                print(data)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
