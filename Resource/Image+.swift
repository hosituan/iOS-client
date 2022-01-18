//
//  Image+.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 18/01/2022.
//

import Foundation
import SwiftUI

extension Image {
    
    struct Common {
        static let rightArrow = Image(systemName: "chevron.right")
        static let leftArrow = Image(systemName: "chevron.left")
        static let upArrow = Image(systemName: "chevron.up")
        static let downArrow = Image(systemName: "chevron.down")
    }
    struct Navigation {
        static let hambuger = Image(systemName: "line.3.horizontal")
    }
    
    struct User {
        static let avatarDefault = Image(systemName: "person.crop.circle.fill")

    }
    
    struct Notification {
        static let notiIcon = Image(systemName: "bell.fill")
    }
    
}

extension Color {
    //https://flatuicolors.com/palette/defo
    static let mainColor = Color(hex: "#2c3e50") //Midnight blue
    static let secondColor = Color(hex: "#34495e") //Wet
    static let silverColor = Color(hex: "#bdc3c7")
    
    struct Common {
        
        
    }
}

