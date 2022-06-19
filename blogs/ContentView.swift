//
//  ContentView.swift
//  blogs
//
//  Created by Nikhil on 19/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            NavigationView {
                List(Article.mocks) { article in
                    NavigationLink(article.title) {
                        NewsCell(article: article)}
                    
                }
                .navigationTitle("Blogs")
            }
        .tabItem {  Label("Blogs", systemImage: "newspaper.circle")}
        .tag(1)
            AboutCell(image: Image(systemName: "photo"),
                  text: Text("Text"),
                  detailText: Text("Detail Text"),
                  tertiaryText: Text("Tertiary Text"))
                .previewLayout(.sizeThatFits).tabItem { Label("About Me", systemImage: "brain.head.profile")}
                .tag(2)
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
