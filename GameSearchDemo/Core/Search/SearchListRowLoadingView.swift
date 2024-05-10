//
//  SearchListRowLoadingView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/7/24.
//

import SwiftUI

struct SearchListRowLoadingView: View {
    var body: some View {
        
        ZStack {
            // Hero Image
            VStack(alignment: .leading) {
                ContentLoadingView()
                    .frame(width: 350, height: 350)
                    .mask {
                        Path(roundedRect: CGRect(x: 0, y: 0, width: 350, height: 350), cornerRadii: RectangleCornerRadii(topLeading: 8, topTrailing: 8))
                    }

                // Platforms & Metacritic
                HStack {
                    
                    Text("Platforms").textCase(.uppercase)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundStyle(.gray)
                        .overlay {
                            ContentLoadingView()
                        }
                    
                    Spacer()
                    

                    ZStack {
                        RoundedRectangle(cornerRadius: 6.0)
                            .frame(width: 50, height: 30)
                            .opacity(0.1)
                        Text("88")
                            .font(.callout)
                            .fontWeight(.bold)
                    }
                    .overlay {
                        ContentLoadingView()
                    }
                          
                }
                .padding(.top, 4)
                .padding([.leading, .trailing])
                
                // Game Name
                Text("GameName")
                    .font(.title)
                    .fontWeight(.bold)
                    .overlay {
                        ContentLoadingView()
                    }
                    .padding(.leading)
 

                Divider()
                
                // Footer Info
                HStack {
                    Text("Mature")
                    Circle()
                        .frame(width: 2)
                    Text("January 7, 2024")
                    
                }
                .font(.caption)
                .fontWeight(.medium)
                .foregroundStyle(.gray)
                .overlay {
                    ContentLoadingView()
                }
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
    SearchListRowLoadingView()
}
