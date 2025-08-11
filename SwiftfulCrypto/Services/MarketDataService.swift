//
//  MarketDataService.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 07/08/2025.
//

import Combine
import Foundation

class MarketDataService {

    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?

    init() {
        getData()
    }

    func getData() {
        guard
            let url = URL(
                string:
                    "https://api.coingecko.com/api/v3/global"
            )
        else { return }

        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: NetworkingManager.handleCopmpletion,
                receiveValue: { [weak self] returnedGlobalData in
                    self?.marketData = returnedGlobalData.data
                    self?.marketDataSubscription?.cancel()
                }
            )
    }
}
