//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Diwas KC on 04/08/2024.
//

import Foundation
import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { item in
                        NavigationLink {
                            LandmarkDetail(landmark: item)
                        } label: {
                            CategoryItem(landmark: item)
                        }
                    }
                }
            } .frame(height: 185)
        }
    }
}

#Preview {
    var landmarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(3)))
}
