//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Diwas KC on 03/08/2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
