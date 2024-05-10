//
//  EmptySearchView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import SwiftUI

struct EmptySearchView: View {
    
    
    var body: some View {
        
        
        Image(systemName: "arcade.stick.console")
            .resizable()
            .frame(width: 450, height: 300)
            .foregroundStyle(.secondary)
            .opacity(0.6)
            .padding(.leading, 250)
            .padding(.top, 250)
        
        
//        ZStack {
//            
////            VStack {
////                Image(systemName: "gamecontroller")
////                    .resizable()
////                    .frame(width: 300, height: 200)
////                    .foregroundStyle(.secondary)
////                    .padding(.trailing, 250)
////                    .padding(.bottom, 100)
////                
////                Image(systemName: "arcade.stick.console")
////                    .resizable()
////                    .frame(width: 300, height: 200)
////                    .foregroundStyle(.secondary)
////                    .padding(.leading, 250)
////            }
////            .opacity(0.5)
////            
////            VStack {
////                Text("Let's Get Searching!")
////                    .font(.largeTitle)
////                    .fontWeight(.bold)
////                    .foregroundStyle(.primary)
////                    .multilineTextAlignment(.center)
////                Text("Use the search bar to find your favorite game.")
////                    .font(.subheadline)
////                    .fontWeight(.semibold)
////                    .multilineTextAlignment(.center)
////                
////            }
//            
//            
//        }
        
    }
}

#Preview {
    EmptySearchView()
}
