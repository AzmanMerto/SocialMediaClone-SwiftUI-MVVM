//
//  BirthdateInputPassive.swift
//  Crewl
//
//  Created by NomoteteS on 4.12.2022.
//

import SwiftUI

struct BirthdateInputPassiveView: View {
    @State var birthDay = ""
    var body: some View {
        ZStack {
            Color("MainBackground")
                .ignoresSafeArea()
            VStack {
                //MARK: - Text
                VStack(spacing: 6){
                    Text("E-Mail Adresi")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                }.padding(.bottom,35)
                //MARK: - TextField
                VStack(spacing: 19) {
                    InputTextField(placeholder: "xxx@mail.com", text: $birthDay)
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

struct BirthdateInputPassive_Previews: PreviewProvider {
    static var previews: some View {
        BirthdateInputPassiveView()
    }
}
