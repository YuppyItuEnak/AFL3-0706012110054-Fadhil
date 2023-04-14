//
//  LandmarkList.swift
//  AFL3-0706012110054-Fadhil
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation
import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}