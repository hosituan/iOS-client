//
//  APIService.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 17/01/2022.
//

import Foundation
import Alamofire

struct APIURL {
    static var baseURL = "https://nft-social-network.herokuapp.com"
    static var apiPath = "/api/v1/auth/"
    
    struct Auth {
        static var login = baseURL + apiPath + "/login"
    }
}
class APIService {
    
    static func Request(url: String, method: HTTPMethod , params: [String: String]? = nil, body: [String: Any]? = nil) -> URLRequest {
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = method.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        if let body = body {
            request.httpBody = try! JSONSerialization.data(withJSONObject: body, options: [])
        }
        return request
    }
    
    static func login(username: String, password: String, completionHandler: @escaping (LoginResponse?, Error?) -> Void) {
        let bodyData: [String: Any] = [
            "username": username,
            "password": password
        ]
        let request = Request(url: APIURL.Auth.login, method: .post, params: nil, body: bodyData)
        URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
            if let error = error {
                completionHandler(nil, error)
            } else if let data = data {
                do {
                    let result = try JSONDecoder().decode(LoginResponse.self, from: data)
                    completionHandler(result, nil)
                } catch let error {
                   completionHandler(nil, error)
                }
            }
            
           
        }).resume()
        
    }
    
    static func getListFeed(page: Int, limit: Int, completionHandler: @escaping (CommonResponse?, Error?) -> Void) {
        
    }
}

