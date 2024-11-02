//
//  Badge.swift
//  Landmarks
//
//  Created by Warner on 2024/8/15.
//

import SwiftUI


struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
            //geometryReader的用处是You use GeometryReader to dynamically draw, position, and size views instead of hard-coding numbers that might not be correct when you reuse a view somewhere else in your app, or on a different-sized display.
        }
        .scaledToFit()
    }
}


#Preview {
    Badge()
}
