//
//  HomeView.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 17/01/2022.
//

import Foundation
import SwiftUI

struct FeedView: View {
    @State private var offset = CGSize.zero
    
    @EnvironmentObject var menuViewModel: MenuViewModel
    @ObservedObject var viewModel = FeedViewModel()
    var body: some View {
        VStack {
            Button {
                menuViewModel.isLeftMenuVisible.toggle()
            } label: {
                Text("show")
            }.padding()
            Button {
                viewModel.login()
            } label: {
                Text("Login")
            }
            Text("Noname")
        }
        .alert(isPresented: $viewModel.showAlert) {
            Alert(
                title: Text(""),
                message: Text(viewModel.message),
                dismissButton: .default(Text("OK"))
            )
        }
        .navigationTitle("Hello")
    }
    
}
