//
//  Preview.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 07/08/2025.
//

import Foundation

struct PreviewMock {
    static let previewCoin = CoinModel.sample
    
    static let stat1 = StatisticModel(title: "Market Cap", value: "$12.5Bn", percentageChange: 25.34)
    static let stat2 = StatisticModel(title: "Total Volume", value: "$1.23Tr")
    static let stat3 = StatisticModel(title: "Portfolio Value", value: "$50.5k", percentageChange: -12.34)
    
    static var homeVM: HomeViewModel {
        let vm = HomeViewModel()
        return vm
    }
}
