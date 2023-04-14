//
//  circleImage.swift
//  AFL3-0706012110054-Fadhil
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct circleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage()
    }
}
