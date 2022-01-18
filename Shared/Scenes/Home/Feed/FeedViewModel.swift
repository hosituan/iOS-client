//
//  HomeViewModel.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 17/01/2022.
//

import Foundation
import Combine

class FeedViewModel: BaseViewModel {
    @Published var message: String = "" {
        didSet {
            self.showAlert.toggle()
        }
    }
    @Published var showAlert = false
    
    func getList(page: Int, limit: Int) {
        
    }
    func login() {
        APIService.login(username: "admin", password: "1111", completionHandler: { response, error in
            DispatchQueue.main.async {
                if let data = response?.data {
                    self.message = "Login success"
                    dataCenter.accessToken = data.accessToken
                } else {
                    self.message = response?.message ?? error?.localizedDescription ?? "Something went wrong, please try again later!"
                }
            }
        })
    }
}
