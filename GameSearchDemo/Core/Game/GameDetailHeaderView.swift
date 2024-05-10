//
//  GameDetailHeaderView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import SwiftUI

struct GameDetailHeaderView: View {
    
    @State var viewModel: GameDetailViewModel
    
    var body: some View {
        ImageLoaderView(url: URL(string: viewModel.game.backgroundImage ?? ""),
                        placeholder: Image(systemName: "exclamationmark.circle"),
                            width: 350,
                            height: 350,
                        cornerRadius: 8)
        
        // Header Info
        VStack(alignment: .center, spacing: 4) {
            Text(viewModel.game.name ?? "")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            HStack(alignment: .center) {
                Text(viewModel.game.genres?[0].name ?? "")
                if viewModel.game.released != nil {
                    Circle()
                        .frame(height: 5)
                    Text(viewModel.formatReleaseYear())
                }
                if let publishers = viewModel.game.publishers, !publishers.isEmpty {
                    Circle()
                        .frame(height: 5)
                    Text(publishers[0].name ?? "")
                }

            }
            .font(.subheadline)

            Spacer()
           
        }
        .foregroundStyle(.primary)
    }
}

#Preview {
    GameDetailHeaderView(viewModel: GameDetailViewModel(game: MockData().gameDetails))
}
