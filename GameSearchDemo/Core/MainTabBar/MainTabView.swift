//
//  MainTabView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/6/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var tabSelection: Tab = .search
    
    enum Tab {
        case search
        case discover
    }
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
            
            // Search
            SearchView(viewModel: SearchViewModel())
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(Tab.search)
            
            // Discover
            DiscoverView()
                .tabItem {
                    Label("Discover", systemImage: "eye")
                        
                }
            
        }
        .tint(.primary)
        
    }
}

#Preview {
    MainTabView()
}
