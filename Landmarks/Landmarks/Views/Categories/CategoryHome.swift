//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Warner on 2024/8/17.
//

import SwiftUI


struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            //使用navigationSplitView实现了点按导航至下一个视图
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                //最后一行用来让内容占满整个显示窗格，而不会留出相框空间
                
                ForEach(modelData.categories.keys.sorted(), id: \.self){ key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                    //代码详见CategoryRow,那里只包含了一个category，这里遍历了所有的category,
                    //感叹号代表：可选绑定
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    CategoryHome()
        .environment(ModelData())
}
