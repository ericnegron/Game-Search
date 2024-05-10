//
//  LaunchScreen.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/9/24.
//

import SwiftUI

struct LaunchScreen: View {
    
    @State var isActive: Bool = false
    @State private var rotationAngle: Double = 0
    @State private var viewSize: CGSize = .zero
    
    var body: some View {
        
        ZStack {
            if isActive {
                MainTabView()
            } else {
                
                VStack {
                    Text("Game Search")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                        .padding(.bottom, 50)
                    
                    Image(systemName: "gamecontroller")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .rotationEffect(.degrees(rotationAngle))
                    
                        .onAppear {
                            withAnimation(.easeInOut(duration: 1.25).repeatForever(autoreverses: false)) {
                                rotationAngle += 360
                            }
                        }
                           
                }
                
                
                Text("Powered by RAWG.io")
                    .font(.caption)
                    .foregroundStyle(.primary)
                    .position(CGPoint(x: viewSize.width / 2, y: viewSize.height - 20))
                
                
                GeometryReader { proxy in
                    Color.clear
                        .onAppear {
                            viewSize = proxy.size
                        }
                }
                    
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation(.easeIn(duration: 0.8)) {
                    self.isActive = true
                }
            }
        }
        
    }
}

#Preview {
    LaunchScreen()
}
