//
//  NetworkManager.swift
//  ServerCommunication_SwiftUI
//
//  Created by Mac on 12/09/20.
//  Copyright © 2020 Gunde Ramakrishna. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                print(data!)
                if error == nil
                {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do
                        {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                print(results)
                                self.posts = results.hits
                            }
                            
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
            
        }
        
    }
}
