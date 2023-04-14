//
//  AFL3_0706012110054_FadhilApp.swift
//  AFL3-0706012110054-Fadhil
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

@main
struct AFL3_0706012110054_FadhilApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
