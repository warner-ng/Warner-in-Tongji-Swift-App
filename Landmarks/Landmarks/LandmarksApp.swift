//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Warner on 2024/8/8.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {         //就是一个窗口，和preview是一个作用，只不过WindowGroup是用在这个app的入口处
            ContentView()
                .environment(modelData)  //如果您想要在 ContentView 内部直接管理 ModelData 对象的状态，您应该使用 @State 修饰符来声明一个状态变量，并将其绑定到 ModelData 对象,详情请看LandmarksApp里面的例子
        }
    }
}

    
