//
//  HapticManager.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 08/08/2025.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
            generator.notificationOccurred(type)
    }
}
