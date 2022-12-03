//
//  ProfilePhotoSelectorView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 2.12.2022.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Setup account", title2: "Add a profile photo")
            
            Button {
                
            } label: {
                Image("plus-icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 128, height: 128)
                    .padding(.top,44)
            }

            
            Spacer()
        }.ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
