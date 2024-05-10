//
//  GameDetailAboutView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import SwiftUI

struct GameDetailAboutView: View {
    
    @State var viewModel: GameDetailViewModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            // Screen Shots
            if let screenshots = viewModel.game.screenShots {
                GroupBox {
                    HStack {
                        Text("Screenshots")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 10) {
                            ForEach(screenshots) { screenShot in
                                NavigationLink {
                                    ScreenShotView(screenShotURL: screenShot.image ?? "")
                                } label: {
                                    ScreenShotCellItem(screenShotURL: screenShot.image ?? "")
                                }

                            }
                        }
                    }
                }
            }

            
            
            // Description
            if let gameDescription = viewModel.game.descriptionRaw {
                GroupBox {
                    HStack {
                        Text("About")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    

                    GroupBox {
                        Text(gameDescription)
                    }
                    
                }
            }
        }
        
    }
}

#Preview {
    GameDetailAboutView(viewModel: GameDetailViewModel(game: MockData().gameDetails))
}
