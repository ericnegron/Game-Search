//
//  ScreenShotCellItem.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import SwiftUI

struct ScreenShotCellItem: View {
    
    var screenShotURL: String
    
    var body: some View {
        
        ImageLoaderView(url: URL(string: screenShotURL),
                        placeholder: Image(systemName: "exclamationmark.circle"),
                        width: 150, height: 150,
                        cornerRadius: 8)
        
    }
}

#Preview {
    ScreenShotCellItem(screenShotURL: MockData().gameDetails.backgroundImage!)
}
