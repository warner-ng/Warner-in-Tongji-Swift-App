//
//  CircleImage.swift
//  Landmarks
//
//  Created by Warner on 2024/8/9.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(.circle)
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius:7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
