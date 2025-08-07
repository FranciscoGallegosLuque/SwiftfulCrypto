//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 06/08/2025.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
            .environmentObject(vm)
        }
    }
}
