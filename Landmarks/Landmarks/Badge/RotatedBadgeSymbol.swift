//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Warner on 2024/8/15.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    //创建一个Angle类型，作为类的数据成员，到时调用这个类的时候用上
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees:5))
}
