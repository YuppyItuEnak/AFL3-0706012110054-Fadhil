//
//  RotatedBadgeSymbol.swift
//  AFL3-0706012110054-Fadhil
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI


//berfungsi untuk membuat badge rotate
struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
