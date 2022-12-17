//
//  SpashView.swift
//  Crewl
//
//  Created by NomoteteS on 28.11.2022.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive == true {
            OnboardingController()
        } else {
            ZStack{
                Image("Splash")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    isActive = true
                }
            }
        }
        
    }
}


struct SpashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
