//
//  GameDetailView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/7/24.
//

import SwiftUI

struct GameDetailView: View {
    
    // View Model
    @State var viewModel: GameDetailViewModel
    
    // Private props
    @State private var viewSize: CGSize = .zero
    @State private var shouldFetchData = true
    
    // View
    var body: some View {
        
        NavigationStack {
            
            ScrollView(.vertical) {
                
                switch viewModel.state {
                case .loading:
                    SearchListRowLoadingView()
                        .onDisappear {
                            viewModel.isLoading = false
                        }
                case .succcess(let game):
                    VStack {
                        
                        GameDetailHeaderView(viewModel: viewModel)
                            .padding(.bottom, 6)
                        
                        Divider()
                        
                        // Detailed Info
                        VStack(alignment: .leading) {
                            
                            if let releeaseDate = game.released {
                                HStack {
                                    Text(releeaseDate.formattedDate())
                                        .font(.caption)
                                    Spacer()
                                }
                            }

                            
                            if let esrb = game.esrbRating?.name {
                                HStack {
                                    Text("ESRB: \(esrb)")
                                        .font(.caption)
                                }
                            }

                                
                        }
                        .padding()

                        // Media & About
                        GameDetailAboutView(viewModel: viewModel)
                        
                            

                    }
                default:
                    EmptyView()
                }
                

            }
        }        
        .task {
            if shouldFetchData {
                
                viewModel.fetchGameDetail(viewModel.game.id)
                shouldFetchData = false
            }
            
        }
        // Alerting
        .alert("Oops! Something Went Wrong!", isPresented: $viewModel.didError, presenting: viewModel.state) { _ in
            Button("Cancel", role: .destructive) {}
            
            Button("Retry", role: .cancel) {
                viewModel.fetchGameDetail(viewModel.game.id)
            }
        } message: { detail  in
            if case let .failed(error) = detail {

                Text(error.localizedDescription)
            }
        }

    }

}

#Preview {
    GameDetailView(viewModel: GameDetailViewModel(game: MockData().gameDetails))
}

