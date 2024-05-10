//
//  SettingsView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.openURL) var openURL
    
    var body: some View {
        
        NavigationStack {
            ScrollView(.vertical) {
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("About")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                        Spacer()
                    }
                    
                    Text("Game Search is a simple app that allows a user to search the RAWG.io database.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    Text("© Eric Negrón, 2024")
                        .font(.caption)
                        .padding([.leading, .top])
                                        
                    
                    GroupBox{
                        VStack {
                            Image("rawg-logo")
                                .resizable()
                                .scaledToFit()
                            
                            HStack {
                                Text("About RAWG")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.top)
                                Spacer()
                            }
                            
                            Text("""
                                RAWG is one of the largest video game database and discovery services. The database houses
                                information on over 500,00 games for 50 platforms.
                                """)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                            .padding(.top)
                            
                            Button("Visit RAWG") {
                                openURL(URL(string: "https://rawg.io")!)
                            }
                            .frame(width: 300)
                            .padding()
                            .background(Color.primary)
                            .foregroundStyle(.background)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                            .padding(.top)
                            

                            
                        }
                    }
                    
                    
                }
                
            }
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button(action: {
                            dismiss.callAsFunction()
                        }, label: {
                            Image(systemName: "x.circle")
                        })
                        .tint(.primary)
                    }
                }
        }

    }
}

#Preview {
    SettingsView()
}
