//
//  Results.swift
//  ServerCommunication_SwiftUI
//
//  Created by Mac on 12/09/20.
//  Copyright © 2020 Gunde Ramakrishna. All rights reserved.
//

import Foundation

struct Results: Decodable{
    
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
