//
//  ContentView.swift
//  InstagramClone
//
//  Created by Gary Tokman on 3/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            TabView {
                VStack{
                Navigation()
                    .padding(.horizontal)
                    storylist()
                        .padding(.leading)
                    ScrollView( showsIndicators: false)
                    {
                        ForEach(0..<10){
                            _ in
                            FeedItem()
                        }
                    }

                    Spacer()
                }.navigationBarHidden(true)
                    .tabItem {
                        Image("home")
                        Text("Home")
                    }
                Text("2nd Tab")
                    .tabItem {
                        Image("search")
                        Text("Search")
                    }
                Text("3rd Tab")
                    .tabItem {
                        Image("reels")
                        Text("Reels")
                    }
                Text("4th Tab")
                    .tabItem {
                        Image(Asset.shop.name) // is trah sy v hum image ka nam likh sktyy hn
                        Text("Shop")
                    }
                Text("5th Tab")
                    .tabItem {
                        Image(Asset.meTab.name)
                        Text("Profile")
                    }
            }
            .font(.headline)

    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//cmd+shift+L to select view
//option+cmd+p to resume canvas
//cmd+n to create new file
