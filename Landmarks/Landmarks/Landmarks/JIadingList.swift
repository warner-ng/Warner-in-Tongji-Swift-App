//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Warner on 2024/8/10.
//


//issue：该界面不知为什么不能直接预览
//issue solved: modelData没有成功共享数据，原因：没有import Observation
import SwiftUI


struct JiadingList: View {
    @Environment(ModelData.self) var modelData

    @State private var Jiading = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in   //定义了一个闭包来完成这个计算属性，in是闭包的标志
               (!Jiading || landmark.state=="同济大学嘉定校区")
           }
       }
    
    var body: some View {
        NavigationSplitView {
            List{

                Toggle(isOn: $Jiading){
                    Text("一键回嘉")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{            //使得能够点击进入子视图，如果没有这个，将无法显示子视图
                        LandmarkDetail(landmark: landmark)
                    }label:{
                        LandmarkRow(landmark: landmark)
                        //前面的landmark是这个视图里面要传递的参数，后面这个landmark是这个ForEach闭包给要遍历的元素刚刚起的名字
                    }
                    
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("嘉定，嘉定")
        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    JiadingList()
        .environment(ModelData())
}


