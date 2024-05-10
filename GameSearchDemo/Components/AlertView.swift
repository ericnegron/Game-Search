//
//  AlertView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import SwiftUI

struct AlertView: View {
    
//    let retryAction: () -> Void
//    let cancelAction: () -> Void
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "exclamationmark.triangle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.red)
                Text("Oops! Looks Like Something Went Wrong")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Text("We were unable to complete your request.  Please try again or come back later.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding(.top, 8)
                
            }
            .frame(width: 350)
            
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 350, height: 350)
                .opacity(0.1)
        }
        

    }
}

#Preview {
//    func retry() {}
//    func cacnel() {}
    
    AlertView()
}
