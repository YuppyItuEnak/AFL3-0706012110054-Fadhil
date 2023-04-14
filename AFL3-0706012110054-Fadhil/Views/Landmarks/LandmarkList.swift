//
//  LandmarkList.swift
//  AFL3-0706012110054-Fadhil
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation
import SwiftUI

//Untuk membuat list landmark
struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{ landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorite only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                    }
                    
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self){
            deviceName in
            LandmarkList()
                .environmentObject(ModelData())
        }
       
    }
}
