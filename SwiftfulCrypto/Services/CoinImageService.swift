//
//  CoinImageService.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 07/08/2025.
//

import Combine
import Foundation
import SwiftUI

class CoinImageService {

    @Published var image: UIImage? = nil

    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    private let fileManager = LocalFileManager.instance
    private let folderName = "coin_images"
    private let imageName: String

    init(coin: CoinModel) {
        self.coin = coin
        self.imageName = coin.id
    }

    private func getCoinImage() {
        if let savedImage = fileManager.getImage(
            imageName: imageName,
            folderName: folderName
        ) {
            image = savedImage
        } else {
            downloadCoinImage()
        }
    }

    private func downloadCoinImage() {
        guard let url = URL(string: imageName) else { return }

        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ data -> UIImage? in
                return UIImage(data: data)
            })
            .sink(
                receiveCompletion: NetworkingManager.handleCopmpletion,
                receiveValue: { [weak self] returnedImage in
                    guard let self = self,
                        let downloadedImage = returnedImage
                    else { return }
                    self.image = downloadedImage
                    self.imageSubscription?.cancel()
                    self.fileManager.saveImage(
                        image: downloadedImage,
                        imageName: self.imageName,
                        folderName: self.folderName
                    )
                }
            )
    }

}
