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
                    .background(
                        navigationLink
                    )
            }
            RightNavigationView()
        }
        .environmentObject(self.viewModel)
    }
    
    var navigationLink: some View {
        VStack {
            NavigationLink(destination: ProfileView(), isActive: $viewModel.isShowProfile, label: {})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class MenuViewModel: ObservableObject {
    
    @Published var isRightMenuVisible: Bool = false
    @Published var isShowSetting: Bool = false {
        didSet {
            isRightMenuVisible = false
        }
    }
    @Published var isShowNoti = false  {
        didSet {
            isRightMenuVisible = false
        }
    }
    @Published var isShowProfile = false  {
        didSet {
            isRightMenuVisible = false
        }
    }
    
}

