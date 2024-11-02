//
//  ContentView.swift
//  Landmarks
//
//  Created by Warner on 2024/8/8.
//
//以下是建立多个底栏的标准代码，不要去问为什么用enum而不用struct，因为enum更简洁
import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab{
        case featured
        case list
    }
    //
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tag(Tab.featured)
                .tabItem{
                    Label("Featured", systemImage: "star")
                }
            
            LandmarkList()
                .tag(Tab.list)
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
            JiadingList()
                .tag(Tab.list)
                .tabItem{
                    Label("Jiading", systemImage: "house")
                }
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

