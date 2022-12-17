//
//  Onboarding5View.swift
//  Crewl
//
//  Created by NomoteteS on 28.11.2022.
//

import SwiftUI

struct Onboarding5View: View {
    var body: some View {
        ZStack{
            Color("MainBackground")
                .ignoresSafeArea()
            //MARK: - Image & Text
            VStack{
                Image("PartyHub")
                    .resizable()
                    .frame(width: 318, height: 318)
                    .cornerRadius(40)
                    .background {
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 322, height: 322)
                            .foregroundColor(.black)
                    }
                    .padding(.bottom,32)
                
                
                VStack(alignment: .center, spacing: 12) {
                    Text("Hemen bize katıl")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                    
                    HStack{
                        Text("Gittiğin barlarda") +
                        Text(" Crewl üyeliğine özel indirimlerin").bold() +
                        Text(" tadını çıkar.")
                        
                    }.frame(width: 250).font(.footnote).foregroundColor(Color("SubtitleDarkGray"))
                }.frame(width: 305) .multilineTextAlignment(.center)
                    .padding(.bottom,45)
                
                VStack(spacing: 50) { 
                    //MARK: - Register Button
                    NavigationLink {
                        
                    } label: {
                        Text("Önkayıt Ol")
                            .bold()
                            .foregroundColor(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.black)
                                    .background(Color("AlternativeBlue"))
                                    .cornerRadius(16)
                                    .frame(width: 327, height: 56)
                                
                            }
                    }
                    //MARK: - Login Button
                    NavigationLink {
                        LocationServiceView()
                            .navigationBarHidden(true)
                    } label: {
                        Text("Giriş yap")
                            .bold()
                            .foregroundColor(.black)
                            .background {
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.black)
                                    .frame(width: 327, height: 56)
                            }
                    }
                }
            }
            //MARK: - Buttons
            
            
            
        }
    }
}

struct Onboarding5View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding5View()
    }
}
