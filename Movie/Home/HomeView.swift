//
//  HomeView.swift
//  Movie
//
//  Created by Abron Design on 1/15/1402 AP.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var vm : HomeVM = .init()
    
    var body: some View {
        
        VStack(spacing:.zero){
            ScrollView{
                
                LazyVStack{
                    ForEach(self.vm.categories, id: \.name){category in
                        NavigationLink(destination: MoviesView(category: category)){
                            CategoryRow(item: category)
                        }
                                                    
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
