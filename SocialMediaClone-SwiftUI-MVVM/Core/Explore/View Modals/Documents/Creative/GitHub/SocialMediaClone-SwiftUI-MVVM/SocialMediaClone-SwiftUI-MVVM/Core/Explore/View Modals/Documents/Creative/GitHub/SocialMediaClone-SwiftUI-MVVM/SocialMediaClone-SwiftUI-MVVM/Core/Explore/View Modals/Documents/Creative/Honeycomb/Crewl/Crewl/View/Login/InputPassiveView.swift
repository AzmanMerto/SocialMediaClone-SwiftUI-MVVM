//
//  InputPassive.swift
//  Crewl
//
//  Created by NomoteteS on 30.11.2022.
//

import SwiftUI

struct InputPassiveView: View {
    var body: some View {
        ZStack{
            Color("MainBackground")
                .ignoresSafeArea()
            VStack{
                
                VStack(spacing:12){
                    //MARK: - Image
                    Image("LoginPageBackground")
                        .resizable()
                        
                        .ignoresSafeArea()
                    //MARK: - Text
                    Text("Giriş Yap")
                        .font(.system(size: 24, weight: .bold, design: .default))
                    
                    Text("Hesabına erişmek için giriş yap.")
                        .font(.system(size: 14, weight: .light, design: .default))
                    
                    //MARK: - Phone Field
                    PhoneTextField()
                    
                    Spacer()
                    
                } .zIndex(1)
                
                //MARK: - Back Button
                HStack {
                    NavigationLink{
                        Onboarding5View()
                            .navigationBarHidden(true)
                    } label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .frame(width: 8, height: 16)
                    }.buttonStyle(LeftPerspectiveButton())
                    
                    Spacer()
                    
                    //MARK: - Next Button
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

struct InputPassiveView_Previews: PreviewProvider {
    static var previews: some View {
        InputPassiveView()
    }
}
