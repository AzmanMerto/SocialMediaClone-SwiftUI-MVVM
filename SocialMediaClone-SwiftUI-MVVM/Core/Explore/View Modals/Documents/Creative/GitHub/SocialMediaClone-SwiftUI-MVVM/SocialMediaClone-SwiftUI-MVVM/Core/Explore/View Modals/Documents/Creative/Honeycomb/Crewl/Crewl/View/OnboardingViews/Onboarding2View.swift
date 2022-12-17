//
//  Onboarding2View.swift
//  Crewl
//
//  Created by NomoteteS on 28.11.2022.
//

import SwiftUI

struct Onboarding2View: View {
    var body: some View {
        ZStack{
            Color("MainBackground")
                .ignoresSafeArea()
            //MARK: - Image & Text
            VStack{
                Image("emote_rabbit_event")
                    .resizable()
                    .frame(width: 168, height: 215)
                    
                VStack(alignment: .center, spacing: 12) {
                    Text("Etrafındaki etkinlikleri keşfet")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                    
                    HStack{
                        Text("İnsanlar için") +
                        Text(" etkinlik oluştur").bold() +
                        Text(" veya düzenlenen") +
                        Text(" etkinlik katıl").bold()
                        
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

struct Onboarding2View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2View()
    }
}
