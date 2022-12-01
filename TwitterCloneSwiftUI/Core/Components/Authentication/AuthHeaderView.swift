//
//  AuthenticationHeader.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 1.12.2022.
//

import SwiftUI

struct AuthHeaderView: View {
    let title1 : String
    let title2 : String
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{ Spacer()}
                
            Text(title1)
            
            Text(title2)
               
            
        }.font(.largeTitle).fontWeight(.semibold)
            .padding(.leading)
            .frame(height: 268)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "tittle1", title2: "tittle2")
    }
}
