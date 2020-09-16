//
//  DetailView.swift
//  ServerCommunication_SwiftUI
//
//  Created by Mac on 14/09/20.
//  Copyright © 2020 Gunde Ramakrishna. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

