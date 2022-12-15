//
//  ProfilePhotoSelectorView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 2.12.2022.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage : UIImage?
    @State private var profileImage : Image?
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Setup account",
                           title2: "Add a profile photo")
            
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .modifier(ProfileImageModifier())
                }else {
                    Image("plus-icon")
                        .resizable()
                        .modifier(ProfileImageModifier())
                        
                }
            }.sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
            }.padding(.top,44)
                
            if  profileImage != nil {
                Button {
                    
                } label: {
                    Text("Countinue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                }.shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            }
            
            Spacer()
        }.ignoresSafeArea()
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

private struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 128, height: 128)
            .clipShape(Circle())
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
