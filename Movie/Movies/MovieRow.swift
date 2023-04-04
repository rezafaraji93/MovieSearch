//
//  MovieRow.swift
//  Movie
//
//  Created by Abron Design on 1/15/1402 AP.
//

import SwiftUI

struct MovieRow: View {
    var item : Movie
    
    var body: some View {
        HStack(spacing: 16){
            MovieThumbnail(thumbnailUrl: item.image)
            Text(item.name)
                .foregroundColor(.black)
            Spacer()
            Text("Rating: 7.1")
        }
        .padding(8)
        .background()
        .shadow(radius: 8)
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieRow(item: .init(name: "The Marksman", overview: "im Hanson’s quiet life is suddenly disturbed by two people crossing the US/Mexico border – a woman and her young son – desperate to flee a Mexican cartel. After a shootout leaves the mother dead, Jim becomes the boy’s reluctant defender. He embraces his role as Miguel’s protector and will stop at nothing to get him to safety, as they go on the run from the relentless assassins.", language: "English", releaseDate: "2021-01-15", voteAverage: "7.1", image: "https://image.tmdb.org/t/p/original/jnq4fV53Px9HvUZD2bQIxtGSwS7.jpg"))
    }
}
