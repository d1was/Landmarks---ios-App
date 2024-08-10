//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Diwas KC on 03/08/2024.
//

import Foundation
import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var favoriteFilter = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            landmark in
            (!favoriteFilter || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                
                Toggle(isOn: $favoriteFilter) {
                    Text("Favorites Only")
                }
                
                ForEach (filteredLandmarks) {
                    landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }

            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
        }

    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
