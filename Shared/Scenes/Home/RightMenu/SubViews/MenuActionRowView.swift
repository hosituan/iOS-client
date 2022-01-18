//
//  ActionRowView.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 18/01/2022.
//

import Foundation
import SwiftUI
struct MenuActionRowView: View {
    @Binding var isTap: Bool
    var title: String = ""
    var image: Image?
    var body: some View {
        HStack {
            Button {
                isTap.toggle()
            } label: {
                image?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20, alignment: .center)
                Text(title)
                    .modifier(TextSize16Bold())
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .foregroundColor(Color.mainColor)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20, alignment: .center)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
    }
}
