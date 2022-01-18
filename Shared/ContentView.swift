//
//  ContentView.swift
//  Shared
//
//  Created by HoSiTuan on 17/01/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = MenuViewModel()
    var body: some View {
        ZStack {
            NavigationView {
                FeedView()
            }
            RightNavigationView()
        }
        .environmentObject(self.viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class MenuViewModel: ObservableObject {
    @Published var isLeftMenuVisible: Bool = false
}

