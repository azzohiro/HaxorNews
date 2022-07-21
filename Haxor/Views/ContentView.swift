//
//  ContentView.swift
//  Haxor
//
//  Created by Azzo Hiro on 07/07/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {

        NavigationView {

            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("Haxor News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
            .previewDevice("iPhone 13 mini")
    }
}

