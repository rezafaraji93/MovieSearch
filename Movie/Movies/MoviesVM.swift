//
//  MoviesVM.swift
//  Movie
//
//  Created by Abron Design on 1/15/1402 AP.
//

import Foundation


class MoviesVM : ObservableObject {
    
    
    var movies : [Movie]  = [.init(name: "Twist", overview: "A Dicken’s classic brought thrillingly up to date in the teeming heartland of modern London, where a group of street smart young hustlers plan the heist of the century for the ultimate payday.", language: "English", releaseDate: "2021-01-15", voteAverage: "7.1", image: "https://image.tmdb.org/t/p/original/5Zv5KmgZzdIvXz2KC3n0MyecSNL.jpg"), .init(name: "The Marksman", overview: "im Hanson’s quiet life is suddenly disturbed by two people crossing the US/Mexico border – a woman and her young son – desperate to flee a Mexican cartel. After a shootout leaves the mother dead, Jim becomes the boy’s reluctant defender. He embraces his role as Miguel’s protector and will stop at nothing to get him to safety, as they go on the run from the relentless assassins.", language: "English", releaseDate: "2021-01-22", voteAverage: "7", image: "https://image.tmdb.org/t/p/original/jnq4fV53Px9HvUZD2bQIxtGSwS7.jpg")]
    
}
