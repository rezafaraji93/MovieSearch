//
//  MoviesView.swift
//  Movie
//
//  Created by Abron Design on 1/15/1402 AP.
//

import SwiftUI

struct MoviesView: View {
    
    @StateObject private var vm : MoviesVM = .init()
    
    var category : Category
    
    var body: some View {
        
        VStack(spacing:.zero){
            
            
            Text("\(category.name) Movies")
                .foregroundColor(.orange)
                .font(.title2)
                .fontWeight(.semibold)
            
            Divider()
                .padding()
            
            ScrollView{
                Spacer()
                LazyVStack{
                    ForEach(self.vm.movies, id: \.name){movie in
                        NavigationLink(destination: MovieDetailView(movie: movie)){
                            MovieRow(item: movie)
                        }
                    }
                }
            }
        }
    }
    
    
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView(category: .init(name: "Action"))
    }
}
