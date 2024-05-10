//
//  ImageLoaderView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/8/24.
//

import SwiftUI

struct ImageLoaderView: View {
    let url: URL?
    let placeholder: Image
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ContentLoadingView()
            case .success(let image):
                image.resizable().aspectRatio(contentMode: .fill)
            case .failure:
                placeholder.resizable()
            @unknown default:
                placeholder.resizable()
            }
        }
        .frame(width: width, height: height)
        
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}

#Preview {
    ImageLoaderView(url: URL(string: MockData().gameDetails.backgroundImage!),
                    placeholder: Image("starfield-sq"), width: 250, height: 250, cornerRadius: 8)
}
