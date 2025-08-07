//
//  Color.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 06/08/2025.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("PrimaryGreenColor")
    let red = Color("PrimaryRedColor")
    let secondaryText = Color("SecondaryTextColor")
}
