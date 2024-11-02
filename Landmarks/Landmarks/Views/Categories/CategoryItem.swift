//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Warner on 2024/8/26.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment:.leading){
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height:155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading,15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
    //在ModelData这个类里面有landmarks这个矩阵（装着json的信息），然后还有一个类叫做Landmark(用于接收json数据的类),这里还定义了一个新的变量叫landmark（用来显示一个地标）
}
