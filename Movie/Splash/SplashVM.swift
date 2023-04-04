//
//  SplashVM.swift
//  Movie
//
//  Created by Abron Design on 1/15/1402 AP.
//

import Foundation
 
class SplashVM : ObservableObject {
    
    @Published var isActive : Bool = false
    
    init(){
        self.runWithDelay(delay: 2.0){
            self.isActive.toggle()
        }
    }
    
    
    
    func  runWithDelay(delay : Double = 0.31,  _ delayFun : @escaping  ()->Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            delayFun()
        }
    }
    
}
