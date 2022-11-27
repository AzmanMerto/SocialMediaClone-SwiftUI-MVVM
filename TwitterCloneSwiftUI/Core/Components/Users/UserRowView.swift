//
//  UserRowView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 24.11.2022.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 48)
            
            VStack(alignment: .leading, spacing: 4){
                Text("NomotetesS")
                    .font(.subheadline)
                    .foregroundColor(.black)
                
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }.padding(.all)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
