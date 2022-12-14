//
//  SideMenuOptionRowView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 26.11.2022.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let ViewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: ViewModel.ImageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(ViewModel.title)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Spacer()
        }
        .frame(height: 48)
        .padding(.horizontal)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(ViewModel: .profile)
    }
}
