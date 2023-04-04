//
//  MovieDetailView.swift
//  Movie
//
//  Created by Abron Design on 1/15/1402 AP.
//

import SwiftUI

struct MovieDetailView: View {
    
    var movie : Movie
    
    var body: some View {
        ScrollView {
            VStack(alignment: HorizontalAlignment.center) {
                Image("logo")
                    .resizable()
                    .frame(height: 300)
                
                Divider()
                    .padding()
                
                Text(movie.name)
                    .font(.title2)
                
                Spacer(minLength: .zero)
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack(spacing: .zero) {
                            Group {
                                Text("Rating: ").foregroundColor(.gray)
                                Text(movie.voteAverage)
                            }
                        }
                        HStack(spacing: .zero) {
                            Group {
                                Text("Language: ").foregroundColor(.gray)
                                Text(movie.language)
                            }
                        }
                    }
                    Spacer(minLength: .zero)
                }
                
                Spacer()
                HStack(alignment: VerticalAlignment.top) {
                    Text("Overview:").foregroundColor(.gray)
                    Text(movie.overview)
                }
                Spacer()
                HStack() {
                    Text("Release date:").foregroundColor(.gray)
                    Text(movie.releaseDate)
                    Spacer()
                }
                Spacer()
            }.padding(.horizontal, 16)
        }
        
        
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: .init(name: "The Marksman", overview: "im Hanson’s quiet life is suddenly disturbed by two people crossing the US/Mexico border – a woman and her young son – desperate to flee a Mexican cartel. After a shootout leaves the mother dead, Jim becomes the boy’s reluctant defender. He embraces his role as Miguel’s protector and will stop at nothing to get him to safety, as they go on the run from the relentless assassins.", language: "English", releaseDate: "2021-01-15", voteAverage: "7.1", image: "https://image.tmdb.org/t/p/original/jnq4fV53Px9HvUZD2bQIxtGSwS7.jpg"))
    }
}
