//
//  Onboarding4View.swift
//  Crewl
//
//  Created by NomoteteS on 28.11.2022.
//

import SwiftUI

struct Onboarding4View: View {
    var body: some View {
        ZStack{
            Color("MainBackground")
                .ignoresSafeArea()
            //MARK: - Image & Text
            VStack{
                Image("emote_fox_discount")
                    .resizable()
                    .frame(width: 168, height: 215)
                    
                VStack(alignment: .center, spacing: 12) {
                    Text("Özel indirimler kazan")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                    
                    HStack{
                        Text("Gittiğin barlarda") +
                        Text(" Crewl üyeliğine özel indirimlerin").bold() +
                        Text(" tadını çıkar.") 
                        
                    }.frame(width: 250).font(.footnote).foregroundColor(Color("SubtitleDarkGray"))
                }.frame(width: 305) .multilineTextAlignment(.center)
            }
            //MARK: - RollRight
            VStack(){
                Spacer()
                Text("Devam etmek için kaydır")
                    .font(.system(size: 16))
                    .font(.footnote)
                    .foregroundColor(Color("PassiveIndicator"))
                    .padding(.bottom)
            }
        }
    }
}

struct Onboarding4View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding4View()
    }
}
