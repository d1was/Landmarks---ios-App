//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Diwas KC on 03/08/2024.
//

import Foundation
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
         HStack {
             landmark.image
                 .resizable()
                 .frame(width: 50, height: 50)

             Text(landmark.name)
             
             Spacer()
             
             if landmark.isFavorite {
                 Image(systemName: "star.fill")
                     .foregroundColor(.yellow)
             }
        }
    }
}

#Preview("Turtle Rock") {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
