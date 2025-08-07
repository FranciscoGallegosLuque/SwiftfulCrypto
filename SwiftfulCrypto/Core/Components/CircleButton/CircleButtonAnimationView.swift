//
//  CircleButtonAnimationView.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 06/08/2025.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? .easeInOut(duration: 1.0) : .none, value: animate)
//            .onAppear {
//                withAnimation(.easeInOut(duration: 1.0)) {
//                    animate.toggle()
//                }
//            }
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
}
