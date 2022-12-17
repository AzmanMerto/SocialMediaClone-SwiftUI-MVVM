//
//  LocationInputPassiveView.swift
//  Crewl
//
//  Created by NomoteteS on 4.12.2022.
//

import SwiftUI

struct LocationInputPassiveView: View {
    var body: some View {
        ZStack {
            Color("MainBackground")
                .ignoresSafeArea()
            VStack {
                //MARK: - Text
                VStack(spacing: 6){
                    Text("Lokasyon")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                    
                    Text("Profilinde lokasyonun yer almayacak.")
                        .font(.system(size: 14, weight: .regular, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                    
                }.padding(.bottom,35)
                //MARK: - TextField
                VStack(spacing: 19) {
                    
                }
                
                VStack {
                    
                }
                Spacer()
                
                //MARK: - Buttons
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
                
            }.padding(.vertical)
        }
    }
}

struct LocationInputPassiveView_Previews: PreviewProvider {
    static var previews: some View {
        LocationInputPassiveView()
    }
}
