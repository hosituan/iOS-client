//
//  LeftMenuNavigationView.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 17/01/2022.
//

import Foundation
import SwiftUI

struct RightNavigationView:View {
    @EnvironmentObject var viewModel: MenuViewModel
    var body: some View {
        ZStack {
            if self.viewModel.isLeftMenuVisible {
                Color.black.opacity(0.8)
                    .ignoresSafeArea()
                    .transition(.opacity)
                    .onTapGesture {
                        viewModel.isLeftMenuVisible.toggle()
                    }
                HStack {
                    VStack {
                        Spacer()
                        Button(action: {
                            self.viewModel.isLeftMenuVisible.toggle()
                        }, label: {
                            Text("Close Me")
                        })
                        Spacer()
                    }
                    Spacer()
                }
                .background(Color.white)
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .ignoresSafeArea()
                .padding(.leading, Screen.width / 3)
                .transition(
                    .asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .trailing)
                    )
                ).zIndex(1)
            }
        }
        .ignoresSafeArea()
        .animation(.default, value: self.viewModel.isLeftMenuVisible)
    }
}
