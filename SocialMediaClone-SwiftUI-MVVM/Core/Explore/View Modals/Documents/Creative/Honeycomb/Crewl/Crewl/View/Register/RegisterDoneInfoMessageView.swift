//
//  RegisterDoneInfoMessageView.swift
//  Crewl
//
//  Created by NomoteteS on 4.12.2022.
//

import SwiftUI

struct RegisterDoneInfoMessageView: View {
    var body: some View {
        ZStack {
            Color("MainBackground")
                .ignoresSafeArea()
            VStack {
                //MARK: - Image & Text
                Spacer()
                
                Image("emote_rabbit_register_done")
                    .resizable()
                    .frame(width: 178, height: 200)
                
                VStack(spacing: 10) {
                    Text("Her şey neredeyse hazır")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                    
                    Text("Ama önce seni biraz daha tanımak istiyoruz.")
                        .font(.system(size: 14, weight: .regular, design: .default))
                        .foregroundColor(Color("SubtitleDarkGray"))
                }
                Spacer()
                }
            //MARK: - Buttons
            VStack{
                Spacer()
                HStack {
                    HStack{
                        NavigationLink{
                            Onboarding5View()
                                .navigationBarHidden(true)
                        } label: {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .frame(width: 8, height: 16)
                        }.buttonStyle(LeftPerspectiveButton())
                        
                        Spacer()
                        
                        NavigationLink {
                            
                        } label: {
                            Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 8, height: 16)
                        }.buttonStyle(RightPerspectiveButton())
                    }.padding()
                        .padding(.bottom)
                }
            }
        }
    }
}

struct RegisterDoneInfoMessageView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterDoneInfoMessageView()
    }
}
