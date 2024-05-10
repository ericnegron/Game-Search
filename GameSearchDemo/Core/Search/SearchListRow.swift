//
//  SearchListRow.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/6/24.
//

import SwiftUI
import UIKit

struct SearchListRow: View {
    
    @State var viewModel: SearchViewModel
    var game: GameDetail
    
    var body: some View {
        

        ZStack {
                // Hero Image
                VStack(alignment: .leading) {
                    ImageLoaderView(url: URL(string: game.backgroundImage ?? ""),
                                    placeholder: Image(systemName: "exclamationmark.circle"),
                                        width: 350,
                                        height: 350,
                                    cornerRadius: 0)
                    .mask {
                        Path(roundedRect: CGRect(x: 0, y: 0, width: 350, height: 350), cornerRadii: RectangleCornerRadii(topLeading: 8, topTrailing: 8))
                    }

                    // Platforms & Metacritic
                    HStack {

                        HStack(spacing: 10) {
                            ForEach(Array(Set(viewModel.getPlatformTypes(game.parentPlatforms ?? []).compactMap(viewModel.mapPlatformAbbreviation))), id: \.self) { platformType in
                                PlatformImageView(platformType: platformType)
                                    .foregroundStyle(.black)
                            }
   
                        }
                        
                        Spacer()
                        
                        if let metacritic = game.metacritic {
                            ZStack {
                                RoundedRectangle(cornerRadius: 6.0)
                                    .frame(width: 50, height: 30)
                                    .foregroundStyle(.black)
                                    .opacity(0.1)
                                Text("\(metacritic)")
                                    .foregroundStyle(viewModel.ratingColor(metacritic))
                                    .font(.callout)
                                    .fontWeight(.bold)
                            }
                        }


                        
                    }
                    .padding(.top, 4)
                    .padding([.leading, .trailing])
                    
                    // Game Name
                    if let name = game.name {
                        Text(name)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                            .foregroundStyle(.black)
                    }

                    Divider()
                    
                    // Footer Info
                    HStack {
                        if let esrbRating = game.esrbRating?.name {
                            Text(esrbRating)
                            Circle()
                                .frame(width: 2)
                        }
                        if let released = game.released {
                            Text(released.formattedDate())
                        }
                        
                    }
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundStyle(.gray)
                    .padding([.leading, .bottom])
                    
                }
                .frame(width: 350)
                .background(
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(.white)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .shadow(radius: 8, x: 0, y: 8)
                        
                    }
                )
            }

        
        

        
    }
}

#Preview {
    SearchListRow(viewModel: SearchViewModel(),
                  game: MockData().gameDetails)
}
