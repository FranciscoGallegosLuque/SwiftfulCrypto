//
//  CoinDetailDataService.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 08/08/2025.
//

import Combine
import Foundation

class CoinDetailDataService {

    @Published var coinDetails: CoinDetailModel? = nil
    
    var coinDetailSubscription: AnyCancellable?
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinsDetails()
    }

    func getCoinsDetails() {
        guard
            let url = URL(
                string:
                    "https://api.coingecko.com/api/v3/coins/\(coin.id)?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false"
            )
        else { return }

        coinDetailSubscription = NetworkingManager.download(url: url)
            .decode(type: CoinDetailModel.self, decoder: JSONDecoder())
            .sink(
                receiveCompletion: NetworkingManager.handleCopmpletion,
                receiveValue: { [weak self] returnedCoinDetail in
                    self?.coinDetails = returnedCoinDetail
                    self?.coinDetailSubscription?.cancel()
                }
            )
    }

}
