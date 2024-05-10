//
//  SearchContentView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import SwiftUI

struct SearchContentView: View {
    
    @State var viewModel: SearchViewModel
    
    var body: some View {
        switch viewModel.state {
        case .loading:
            SearchListRowLoadingView()
                .onDisappear {
                    viewModel.isLoading = false
                }
        case .succes(let games):
            LazyVStack(spacing: 20) {
                
                ForEach(games) { game in
                    
                    NavigationLink {
                        GameDetailView(viewModel: GameDetailViewModel(game: game))
                    } label: {
                        SearchListRow(viewModel: viewModel, game: game)
                    }
                    
                }
            }
        default:
            EmptyView()

        }

    }
}

#Preview {
    SearchContentView(viewModel: SearchViewModel())
}
