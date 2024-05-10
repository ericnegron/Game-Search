//
//  ScreenShotView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import SwiftUI

struct ScreenShotView: View {
    
    var screenShotURL: String
    
    var body: some View {
        
        
        ImageLoaderView(url: URL(string: screenShotURL),
                        placeholder: Image(systemName: "exclamationmark.circle"),
                        width: 400, height: 300,
                        cornerRadius: 0)
    }
}

#Preview {
    ScreenShotView(screenShotURL: MockData().gameDetails.backgroundImage!)
}
