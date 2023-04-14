//
//  FavoriteButton.swift
//  AFL3-0706012110054-Fadhil
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    
    //Untuk menampilkan gambar favorite icon
    var body: some View {
        Button{
            isSet.toggle()
        }label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill": "star")
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
