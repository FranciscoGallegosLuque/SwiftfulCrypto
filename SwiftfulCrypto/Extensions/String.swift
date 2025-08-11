//
//  String.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 11/08/2025.
//

import Foundation

extension String {
    var removingHTMLOcurrences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
