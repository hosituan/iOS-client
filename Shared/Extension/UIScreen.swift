//
//  UIScreen.swift
//  NFT-Social (iOS)
//
//  Created by HoSiTuan on 17/01/2022.
//

import Foundation
import UIKit
struct Screen {
    static var width: CGFloat = UIScreen.main.bounds.width
    static var height: CGFloat =  UIScreen.main.bounds.height
    
    static var statusBarHeight = UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    static var safeAreaFrame = UIApplication.shared.windows.first?.safeAreaInsets
    
}
