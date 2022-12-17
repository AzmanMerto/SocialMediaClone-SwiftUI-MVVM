//
//  Onboarding Controller.swift
//  Crewl
//
//  Created by NomoteteS on 30.11.2022.
//

import SwiftUI

struct OnboardingController: View {
    
    var body: some View {
        ZStack{
            TabView{
                Onboarding1View()
                Onboarding2View()
                Onboarding3View()
                Onboarding4View()
                Onboarding5View()
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .ignoresSafeArea()
        }
    }
}

struct OnboardingController_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingController()
    }
}
