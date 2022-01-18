//
//  LoginResponse.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 17/01/2022.
//

import Foundation

struct LoginResponse: Decodable {
    var success: Bool?
    var message: String?
    
    var data: TokenData?
}

struct TokenData: Codable {
    var accessToken: String?
}
