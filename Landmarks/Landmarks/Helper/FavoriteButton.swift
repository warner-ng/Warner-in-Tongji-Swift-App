//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Warner on 2024/8/10.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool   //引用传递
    
    var body: some View {
        Button{
            isSet.toggle()
        }label:{
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                        .labelStyle(.iconOnly)
                        .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
