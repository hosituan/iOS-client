//
//  LeftMenuNavigationView.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 17/01/2022.
//

import Foundation
import SwiftUI

struct RightNavigationView:View {
    @EnvironmentObject var menuViewModel: MenuViewModel
    @ObservedObject var viewModel = RightMenuViewModel()
    var body: some View {
        ZStack {
            if self.menuViewModel.isRightMenuVisible {
                backgroundView
                menuView.zIndex(1)
            }
        }
        .ignoresSafeArea()
        .animation(.default, value: self.menuViewModel.isRightMenuVisible)
    }
    
    var backgroundView: some View {
        Color.black.opacity(0.8)
            .ignoresSafeArea()
            .transition(.opacity)
            .onTapGesture {
                menuViewModel.isRightMenuVisible.toggle()
            }
    }
    var menuView: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                ProfileMenuView(user: viewModel.user,
                                isTapProfile: $menuViewModel.isShowProfile,
                                isTapNotification: $menuViewModel.isShowNoti)
                    .padding(.top, Screen.safeAreaFrame?.top)
                actionView
                Spacer()
            }
        })
            .background(Color.silverColor)
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .padding(.leading, Screen.width / 3)
            .transition(
                .asymmetric(
                    insertion: .move(edge: .trailing),
                    removal: .move(edge: .trailing)
                )
            )
        
    }
    
    var actionView: some View {
        VStack {
            MenuActionRowView(isTap: $menuViewModel.isShowSetting, title: "Setting", image: Image.Common.leftArrow)
            Divider()
            MenuActionRowView(isTap: $menuViewModel.isShowSetting, title: "Setting", image: Image.Common.leftArrow)
            Divider()
            MenuActionRowView(isTap: $menuViewModel.isShowSetting, title: "Setting", image: Image.Common.leftArrow)
            Divider()
        }
    }
}
