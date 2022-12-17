//
//  PrivacyPolicy.swift
//  Crewl
//
//  Created by NomoteteS on 6.12.2022.
//

import SwiftUI

struct PrivacyPolicy: View {
    @State var TermsOfUse = false
    @State var ConfidentialityAgreement = false
    var body: some View {
        ZStack {
            Color("MainTitle-Button-Stroke")
            VStack(spacing: 0){
                
                HStack(spacing: 0){
                    Text("Kullanım Koşulları ")
                        .foregroundColor(Color("AlternativeYellow"))
                        .onTapGesture {
                        TermsOfUse.toggle()
                    }.sheet(isPresented: $TermsOfUse){
                        TermsOfUseView()
                    }
                        Text("ve ")
                    
                    Text("Güvenlik Sözleşmesi")
                        .foregroundColor(Color("AlternativeYellow"))
                        .onTapGesture {
                        ConfidentialityAgreement.toggle()
                    }.sheet(isPresented: $ConfidentialityAgreement){
                        ConfidentialityAgreementView()
                    }
                    Text("‘ni okudum ")
                }
                HStack(spacing: 0){
                    Text(" ve kabul ediyorum.")
                }
            }.font(.system(size: 12, weight: .regular, design: .default))
                .foregroundColor(Color("PassiveIndicator"))
                .multilineTextAlignment(.leading)
        }.frame(width: 327, height: 55)
            .cornerRadius(5)
    }
}

struct PrivacyPolicy_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicy()
    }
}


struct TermsOfUseView : View {
    var body: some View {
        VStack {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        }
    }
}

struct ConfidentialityAgreementView : View {
    var body: some View {
        VStack {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        }
    }
}
