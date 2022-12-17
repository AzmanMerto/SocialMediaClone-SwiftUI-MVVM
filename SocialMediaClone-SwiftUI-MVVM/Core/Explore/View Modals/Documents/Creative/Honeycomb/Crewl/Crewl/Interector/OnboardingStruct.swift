//
//  OnboardingStruct.swift
//  Crewl
//
//  Created by NomoteteS on 2.12.2022.
//

import SwiftUI

struct OnboardingStruct: View {
    var body: some View {
        ZStack{
            Color("MainBackground")
                .ignoresSafeArea()
            //MARK: - Image & Text
            VStack{
                Image("emote_rabbit_cigarette")
                    .resizable()
                    .frame(width: 168, height: 215)
                    
                VStack(alignment: .center, spacing: 12) {
                    Text("Crewl’a hoşgeldin")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                    
                    HStack{
                        Text("Şehrin") +
                        Text(" en iyi bar etkinliklere").bold() +
                        Text(" katılmak için devam et.")
                        
                    }.font(.footnote).foregroundColor(Color("SubtitleDarkGray"))
                }.frame(width: 305) .multilineTextAlignment(.center)
            }
            //MARK: - RollRight
            VStack(){
                Spacer()
                Text("Devam etmek için kaydır")
                    .foregroundColor(Color("PassiveIndicator"))
                    .padding(.bottom)
            }
        }
    }
}

struct OnboardingStruct_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStruct()
    }
}
