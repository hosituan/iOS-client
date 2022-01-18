//
//  ProfileMenuView.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 18/01/2022.
//

import Foundation
import SwiftUI
import SDWebImageSwiftUI

struct ProfileMenuView: View {
    var user: User?
    @Binding var isTapProfile: Bool
    @Binding var isTapNotification: Bool
    var body: some View {
        HStack {
            HStack {
                if let urlStr = user?.imageUrl, let url = URL(string: urlStr) {
                    WebImage(url: url)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 64, height: 64, alignment: .center)
                        .cornerRadius(32)
                } else {
                    Image.User.avatarDefault
                        .resizable()
                        .foregroundColor(Color.secondColor)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 64, height: 64, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 32)
                                    .stroke(Color.white, lineWidth: 2))
                }
                VStack(alignment: .leading) {
                    Text(user?.displayName ?? "")
                        .bold()
                        .font(.system(size: 14))
                    Text(user?.username ?? "")
                        .italic()
                        .font(.system(size: 12))
                }
            }
            .buttonStyle(PlainButtonStyle())
            .onTapGesture {
                    isTapProfile.toggle()
                }
            
            Spacer()
            Image.Notification.notiIcon
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(12)
                .frame(width: 24, height: 24, alignment: .center)
                .onTapGesture {
                    isTapNotification.toggle()
                }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
    }
    
}
