//
//  LnadmarkRow.swift
//  Landmarks
//
//  Created by Warner on 2024/8/10.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(landmark.name)


            Spacer()


            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundStyle(.yellow)
            }
        }
    }
}


#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])   //在这里输入实参
        LandmarkRow(landmark: landmarks[1]) //语法：参数名：参数值
    }
}
