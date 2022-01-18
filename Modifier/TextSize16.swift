//
//  TextSize16.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 18/01/2022.
//

import Foundation
import SwiftUI

struct TextSize16Bold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.mainColor)
            .font(.system(size: 16, weight: .bold, design: .default))
            
    }
}


struct NavigationLink_16: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.mainColor)
            .font(.system(size: 16, weight: .medium, design: .default))
    }
}

