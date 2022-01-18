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
            Text("Noname")
        }
        .alert(isPresented: $viewModel.showAlert) {
            Alert(
                title: Text(""),
                message: Text(viewModel.message),
                dismissButton: .default(Text("OK"))
            )
        }
        .navigationBarItems(
            trailing:
                Button {
                    menuViewModel.isRightMenuVisible.toggle()
                } label: {
                    Image.Navigation.hambuger
                        .resizable()
                        .foregroundColor(Color.mainColor)
                        .frame(width: 20, height: 20, alignment: .center)
                        .padding(.trailing, 6)
                        .padding(.top, 6)
                }
            
        )
        .navigationTitle("Hello")
    }
    
}
