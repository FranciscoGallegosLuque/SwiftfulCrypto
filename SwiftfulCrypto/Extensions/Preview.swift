//
//  Preview.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 07/08/2025.
//

import Foundation

struct PreviewMock {
    static let previewCoin = CoinModel.sample
    
    static var homeVM: HomeViewModel {
        let vm = HomeViewModel()
        return vm
    }
}
