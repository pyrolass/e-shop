//
//  TabBar.swift
//  e-shop
//
//  Created by Las Rock on 3/20/21.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        NavigationView{
            ContentView()
        }.tabItem {
            Image(systemName: "home")
        }
        
        NavigationView{
            ContentView()
        }.tabItem {
            Image(systemName: "heart")
        }
        
        NavigationView{
            ContentView()
        }.tabItem {
            Image(systemName: "magnifyingglass")
        }
        
        NavigationView{
            ContentView()
        }.tabItem {
            Image(systemName: "bag")
        }
        
        NavigationView{
            ContentView()
        }.tabItem {
            Image(systemName: "person")
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
