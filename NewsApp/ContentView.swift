//
//  ContentView.swift
//  NewsApp
//
//  Created by Dmitry Grebenyuk on 24/9/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts, rowContent: { post in
                Text(post.title)
            })
            .navigationTitle("The News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post: Identifiable {
//    var id: String
//    var title: String
//}
//
//let posts = [Post(id: "1", title: "Test1"),
//             Post(id: "2", title: "Test2"),
//             Post(id: "3", title: "Test3")]
