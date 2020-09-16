//
//  WebView.swift
//  ServerCommunication_SwiftUI
//
//  Created by Mac on 14/09/20.
//  Copyright © 2020 Gunde Ramakrishna. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context){
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

