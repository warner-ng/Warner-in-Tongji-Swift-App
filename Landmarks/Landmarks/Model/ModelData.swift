//
//  ModelData.swift
//  Landmarks
//
//  Created by Warner on 2024/8/9.
//
import Foundation
import Observation


@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    var features: [Landmark]{
        //中括号里面需要加上数据类型
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String:[Landmark]]{
        //键值对字典
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}

    
//下面这些在做配置
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

