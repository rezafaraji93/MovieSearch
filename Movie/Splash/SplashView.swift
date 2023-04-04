//
//  SplashView.swift
//  Movie
//
//  Created by Abron Design on 1/15/1402 AP.
//

import SwiftUI

struct SplashView: View {
    
    @StateObject private var vm : SplashVM = .init()
    
    var body: some View {
        VStack {
            
            
            NavigationLink(destination: HomeView(), isActive: self.$vm.isActive){
                EmptyView()
            }
            
            
            Spacer()
            
            Image("logo")
                .resizable()
                .scaledToFit()
            
            Spacer()
        }
        .background(.black)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
