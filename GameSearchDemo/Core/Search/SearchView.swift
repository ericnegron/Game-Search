//
//  SearchView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/6/24.
//

import SwiftUI

struct SearchView: View {
    // Environment
    @Environment(\.isSearching) var isSearching
    @Environment(\.dismissSearch) var dissmissSearch
    @Environment(\.dismiss) var dismiss
    
    // Settings
    @State var isPresentingSettings = false
    
    // Search
    @State private var searchTerm = ""
    
    // ViewModel
    @State var viewModel: SearchViewModel
    
    
    var body: some View {
        NavigationStack {
            // Main Content
            ScrollView(.vertical) {
                
                switch viewModel.state {
                case .loading:
                    VStack(spacing: 20) {
                        ForEach(0...3, id: \.self) { _ in
                            SearchListRowLoadingView()
                                .onDisappear {
                                    viewModel.isLoading = false
                                }
                        }
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
//                    EmptySearchView()
                    EmptyView()
                }

            }
        
            // Navigation
            .navigationTitle("Search")
            
            // Search
            .searchable(text: $searchTerm, prompt: "Search For A Game")
            .onSubmit(of: .search) {
                if searchTerm.isEmpty {
                    print("Need to handle empty case")
                } else {
                    print("searching for: \(searchTerm)")
                    viewModel.fetchSearchResults(for: searchTerm)
                }
                
            }
            .onChange(of: searchTerm) { oldValue, newValue in
                
                // clear out the view
                if searchTerm.isEmpty && !isSearching {
                    viewModel = SearchViewModel()
                }
            }
            
            // Error
            .alert("Oops! Something Went Wrong!", isPresented: $viewModel.didError, presenting: viewModel.state) { _ in
                Button("Cancel", role: .destructive) {}
                
                Button("Retry", role: .cancel) {
                    viewModel.fetchSearchResults(for: searchTerm)
                }
            } message: { detail  in
                Image(systemName: "exclamationmark.triangle")
                if case let .failed(error) = detail {

                    Text(error.localizedDescription)

                }
            }
            
            // Toolbar
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Game Search")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        self.isPresentingSettings = true
                    }, label: {
                        Image(systemName: "gearshape")
                            .foregroundStyle(.primary)
                    })
                }
                
            }
            
            // Settings
            .sheet(isPresented: $isPresentingSettings) {
                SettingsView()
            }


        }
        .tint(.primary)


        
    }
}

#Preview {
    SearchView(viewModel: SearchViewModel(games: MockData().searchResults.results))
}


