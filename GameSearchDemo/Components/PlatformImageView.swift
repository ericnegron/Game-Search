//
//  PlatformImageView.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/7/24.
//

import SwiftUI

struct PlatformImageView: View {
    
    let platformType: Platform.PlatformType
    
    var body: some View {
        switch platformType {
        case .Mac:
            Image(systemName: "apple.logo")
        case .Xbox:
            Image(systemName: "xbox.logo")
        case .PlayStation:
            Image(systemName: "playstation.logo")
        case .PC:
            Image("windows-icon-2", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .iOS:
            Image(systemName: "apple.logo")
        case .Android:
            Image("brand-android-robot-darkpng", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .Linux:
            Image("linux-icon", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .Switch:
            Image("switch", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .Atari:
            Image("atari-2", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .Comodore:
            Image("comodore", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .Sega:
            Image("sega", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .ThreeDO:
            Image("brand-3DO_Logo.svg-robot-darkpng", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .NeoGeo:
            Image("neogeo", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .Web:
            Image(systemName: "display")
        case .Meta:
            Image("meta-logo-facebook", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .Stadia:
            Image("stadia", bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        case .Other:
            Image(systemName: "arcade.stick.console")
        }
    }
}

#Preview {
    PlatformImageView(platformType: .Atari)
}
