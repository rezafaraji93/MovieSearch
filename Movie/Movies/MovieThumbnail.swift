//
//  MovieThumbnail.swift
//  Movie
//
//  Created by Abron Design on 1/15/1402 AP.
//

import SwiftUI

struct MovieThumbnail: View {
    
    var thumbnailUrl: String
    
    var body: some View {
        AsyncImage(url: URL(string: self.thumbnailUrl)) { image in
            
            image
                .renderingMode(.original)
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
        } placeholder: {
            Circle()
                .fill(.gray)
                .frame(width: 48, height: 48)
        }
    }
}

struct MovieThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        MovieThumbnail(thumbnailUrl: .init("logo"))
    }
}
