//
//  ContentView.swift
//  ServerCommunication_SwiftUI
//
//  Created by Mac on 12/09/20.
//  Copyright © 2020 Gunde Ramakrishna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url))
                
                {
                    HStack{
                    Text(String(post.points))
                    Text(post.title)
                        
                    }
                }
               
            }
        .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
