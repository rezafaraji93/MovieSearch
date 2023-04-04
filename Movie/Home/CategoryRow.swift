//
//  CategoryRow.swift
//  Movie
//
//  Created by Abron Design on 1/15/1402 AP.
//

import SwiftUI

struct CategoryRow: View {
    
    var item : Category
    
    var body: some View {
        HStack(spacing: 8){
            Circle()
                .fill(Color.blue)
                .frame(width: 8, height: 8)
            Text(item.name)
                .foregroundColor(.black)
            
            Spacer()
        }
        .padding(16)
        .background()
        .shadow(radius: 2)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(item: .init(name: "Action"))
    }
}
